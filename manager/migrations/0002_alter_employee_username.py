# Generated by Django 5.0.3 on 2024-04-01 06:09

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('manager', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='employee',
            name='username',
            field=models.CharField(max_length=30, unique=True),
        ),
    ]
