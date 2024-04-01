from django.contrib import admin
from django.urls import path
from manager import views

urlpatterns = [
    path('', views.login, name='login'),
    path('dashboard', views.dashboard, name='dashboard'),
    path('logout', views.logout, name='logout'),
    path('create_project', views.create_project, name='create_project'),
    path('create_employee', views.create_employee, name='create_employee'),
]