# system_management/views.py

import os
import subprocess
from django.http import HttpResponse
from rest_framework.decorators import api_view, permission_classes
from rest_framework.permissions import IsAdminUser

@api_view(['POST'])
@permission_classes([IsAdminUser])
def backup_database(request):
    backup_file = os.path.join(os.path.dirname(__file__), 'backup.sql')
    command = f'mysqldump -u {os.getenv("DB_USER")} -p{os.getenv("DB_PASSWORD")} {os.getenv("DB_NAME")} > {backup_file}'
    subprocess.call(command, shell=True)
    return HttpResponse('Backup completed successfully', content_type='text/plain')

@api_view(['POST'])
@permission_classes([IsAdminUser])
def restore_database(request):
    backup_file = os.path.join(os.path.dirname(__file__), 'backup.sql')
    command = f'mysql -u {os.getenv("DB_USER")} -p{os.getenv("DB_PASSWORD")} {os.getenv("DB_NAME")} < {backup_file}'
    subprocess.call(command, shell=True)
    return HttpResponse('Restore completed successfully', content_type='text/plain')

