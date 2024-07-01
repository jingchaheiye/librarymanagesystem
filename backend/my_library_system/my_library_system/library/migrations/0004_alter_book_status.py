# Generated by Django 3.2.25 on 2024-06-24 07:31

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('library', '0003_auto_20240617_1715'),
    ]

    operations = [
        migrations.AlterField(
            model_name='book',
            name='status',
            field=models.CharField(choices=[('available', 'Available'), ('borrowed', 'Borrowed'), ('reserved', 'Reserved'), ('lost', 'Lost'), ('damaged', 'Damaged')], default='available', max_length=20),
        ),
    ]
