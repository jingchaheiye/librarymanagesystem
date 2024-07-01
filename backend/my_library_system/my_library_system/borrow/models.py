from django.db import models
from users.models import User
from library.models import Book

class BorrowRecord(models.Model):
    STATUS_CHOICES = [
        ('borrowed', 'Borrowed'),
        ('returned', 'Returned'),
        ('overdue', 'Overdue'),
        ('renewed', 'Renewed'),
    ]

    user = models.ForeignKey(User, related_name='borrow_records', on_delete=models.CASCADE)
    book = models.ForeignKey(Book, related_name='borrow_records', on_delete=models.CASCADE)
    borrow_date = models.DateTimeField(auto_now_add=True)
    due_date = models.DateTimeField()
    return_date = models.DateTimeField(blank=True, null=True)
    status = models.CharField(max_length=10, choices=STATUS_CHOICES, default='borrowed')

    def __str__(self):
        return f'{self.user.username} borrowed {self.book.title}'

