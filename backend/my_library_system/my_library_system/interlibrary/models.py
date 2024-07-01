from django.db import models
from users.models import User
from library.models import Book

class InterlibraryLoan(models.Model):
    STATUS_CHOICES = [
        ('requested', 'Requested'),
        ('approved', 'Approved'),
        ('denied', 'Denied'),
        ('returned', 'Returned'),
    ]

    user = models.ForeignKey(User, related_name='interlibrary_loans', on_delete=models.CASCADE)
    book = models.ForeignKey(Book, related_name='interlibrary_loans', on_delete=models.CASCADE)
    library_name = models.CharField(max_length=255)
    request_date = models.DateTimeField(auto_now_add=True)
    status = models.CharField(max_length=10, choices=STATUS_CHOICES, default='requested')

    def __str__(self):
        return f'{self.user.username} - {self.book.title} - {self.library_name}'
