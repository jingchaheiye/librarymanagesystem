from django.db import models
from users.models import User
from library.models import Book

class CourseBookList(models.Model):
    course_id = models.CharField(max_length=50)
    teacher = models.ForeignKey(User, related_name='course_booklists', on_delete=models.CASCADE)
    book = models.ForeignKey(Book, related_name='course_booklists', on_delete=models.CASCADE)

    def __str__(self):
        return f'{self.course_id} - {self.book.title}'
