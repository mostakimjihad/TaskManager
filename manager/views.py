from django.shortcuts import render, redirect
from .models import Employee, Project, ProjectUpdate
from django.contrib import messages

# Create your views here.
def login(request):
    if 'user_id' in request.session:
        return redirect('dashboard')
    if request.method == 'POST':
        username = request.POST.get('username')
        password = request.POST.get('password')

        employee = Employee.objects.filter(username=username, password=password).first()
        
        if employee is not None:

            request.session['user_id'] = employee.id
            return redirect('dashboard')
        else:

            messages.error(request, 'Invalid username or password')
            return render(request, 'login.html')
    else:
        return render(request, 'login.html')
    

def dashboard(request):
    if 'user_id' in request.session:
        user_id = request.session['user_id']
        employees = Employee.objects.all()
        projects = Project.objects.all()
        employee = Employee.objects.get(id=user_id)
        assigned_projects = employee.projects.all()
        return render(request, 'dashboard.html', {'employee': employee, 'employees': employees, 'assigned_projects': assigned_projects, 'projects': projects})
    else:
        return redirect('login')
    

def logout(request):
    if 'user_id' in request.session:
        del request.session['user_id']
    return redirect('login')


def create_project(request):
    if 'user_id' in request.session:
        user_id = request.session['user_id']
        employee = Employee.objects.get(id=user_id)
        available_managers = Employee.objects.filter(roll='manager')
        if employee.roll == "admin":
            if request.method == 'POST':
                project_name = request.POST.get('project_name')
                due_date = request.POST.get('due_date')
                status = "ongoing"
                selected_managers = request.POST.getlist('manager')
                if len(selected_managers) < 2:
                    messages.error(request, 'select at least two manager')
                    print("error")
                    return render(request, 'create_project.html', {'employee': employee, 'available_managers': available_managers})
                else:
                    project = Project.objects.create(project_name=project_name, due_date=due_date, status=status)

                    for manager in selected_managers:
                        pm = Employee.objects.get(id=manager)
                        project.team.add(pm)

                    return redirect('dashboard')
            else:
                return render(request, 'create_project.html', {'employee': employee, 'available_managers': available_managers})
        else:
            return redirect('login')
        
    else:
        return redirect('login')
    

def create_employee(request):
    if 'user_id' in request.session:
        user_id = request.session['user_id']
        employee = Employee.objects.get(id=user_id)
        if employee.roll == "admin":
            if request.method == 'POST':
                username = request.POST.get('username')
                password = request.POST.get('password')
                roll = request.POST.get('roll')
                print(username)
                print(password)
                print(roll)
                user = Employee.objects.create(username=username, password=password, roll=roll)
                return redirect('dashboard')
            else:
                return render(request, 'create_employee.html', {'employee': employee})
        else:
            return redirect('login')
        
    else:
        return redirect('login')
    


def details(request, project_id):
    if 'user_id' in request.session:
        user_id = request.session['user_id']
        employee = Employee.objects.get(id=user_id)
        project = Project.objects.get(id=project_id)
        updates = ProjectUpdate.objects.filter(project=project)
        employees = project.team.all()
        if request.method == 'POST':
            comment = request.POST.get('comment')
            completion = request.POST.get('completion')
            update = ProjectUpdate.objects.create(employee=employee, project=project, comment=comment, completion=completion)
            return redirect('details', project_id=project_id)
        else:
            return render(request, 'details.html', {'employee': employee, 'employees': employees, 'project': project, 'updates': updates})
    else:
        return redirect('login')

    
