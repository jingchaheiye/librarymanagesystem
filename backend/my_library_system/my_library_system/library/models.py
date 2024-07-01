from django.db import models
from django.core.validators import MinValueValidator, MaxLengthValidator

class Category(models.Model):
    name = models.CharField(max_length=100)
    description = models.TextField(blank=True, null=True)

    def __str__(self):
        return self.name

class Book(models.Model):
    STATUS_CHOICES = [
        ('available', 'Available'),
        ('borrowed', 'Borrowed'),
        ('reserved', 'Reserved'),
        ('lost', 'Lost'),
        ('damaged', 'Damaged'),
    ]

    title = models.CharField(max_length=255)
    author = models.CharField(max_length=100)
    isbn = models.CharField(max_length=13, unique=True, validators=[MaxLengthValidator(13)])
    publisher = models.CharField(max_length=100, blank=True, null=True)
    publish_date = models.DateField(blank=True, null=True)
    category = models.ForeignKey(Category, related_name='books', on_delete=models.CASCADE)
    stock = models.IntegerField(default=0, validators=[MinValueValidator(0)])
    location = models.CharField(max_length=100, blank=True, null=True)
    status = models.CharField(max_length=20, choices=STATUS_CHOICES, default='available')
    created_at = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return f"{self.title} by {self.author}"
