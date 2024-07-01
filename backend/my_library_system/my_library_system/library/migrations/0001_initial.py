# Generated by Django 3.2.25 on 2024-06-14 05:22

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Category',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=50)),
                ('description', models.TextField(blank=True, null=True)),
            ],
        ),
        migrations.CreateModel(
            name='Book',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(max_length=255)),
                ('author', models.CharField(max_length=100)),
                ('isbn', models.CharField(max_length=20, unique=True)),
                ('publisher', models.CharField(blank=True, max_length=100, null=True)),
                ('publish_date', models.DateField(blank=True, null=True)),
                ('stock', models.IntegerField(default=0)),
                ('location', models.CharField(blank=True, max_length=100, null=True)),
                ('status', models.CharField(choices=[('available', 'Available'), ('borrowed', 'Borrowed'), ('reserved', 'Reserved'), ('lost', 'Lost'), ('damaged', 'Damaged')], default='available', max_length=10)),
                ('created_at', models.DateTimeField(auto_now_add=True)),
                ('category', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='books', to='library.category')),
            ],
        ),
    ]