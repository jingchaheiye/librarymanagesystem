# Generated by Django 3.2.25 on 2024-06-17 09:15

import django.core.validators
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('library', '0002_alter_category_name'),
    ]

    operations = [
        migrations.AlterField(
            model_name='book',
            name='isbn',
            field=models.CharField(max_length=13, unique=True, validators=[django.core.validators.MaxLengthValidator(13)]),
        ),
        migrations.AlterField(
            model_name='book',
            name='stock',
            field=models.IntegerField(default=0, validators=[django.core.validators.MinValueValidator(0)]),
        ),
    ]
