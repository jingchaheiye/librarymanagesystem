# system_management/urls.py

from django.urls import path
from .views import backup_database, restore_database

urlpatterns = [
    path('backup/', backup_database, name='backup-database'),
    path('restore/', restore_database, name='restore-database'),
]
