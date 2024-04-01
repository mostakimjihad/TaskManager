from django.db import models

# Create your models here.
class Employee(models.Model):
    username = models.CharField(max_length=30, unique=True)
    password = models.CharField(max_length=30)
    roll = models.CharField(max_length=30)
    projects = models.ManyToManyField('Project', related_name='team')

class Project(models.Model):
    project_name = models.CharField(max_length=30)
    due_date = models.CharField(max_length=30)
    status = models.CharField(max_length=30)

class ProjectUpdate(models.Model):
    employee = models.ForeignKey(Employee, on_delete=models.CASCADE)
    project = models.ForeignKey(Project, on_delete=models.CASCADE)
    comment = models.CharField(max_length=30)
    completion = models.CharField(max_length=30)



