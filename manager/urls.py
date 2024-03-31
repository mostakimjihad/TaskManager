from django.contrib import admin
from django.urls import path
from manager import views

urlpatterns = [
    path('', views.login, name='login'),
]