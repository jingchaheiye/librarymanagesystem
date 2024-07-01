from rest_framework import serializers
from .models import CourseBookList
from users.models import User
from library.models import Book

class TeacherSerializer(serializers.ModelSerializer):
    class Meta:
        model = User
        fields = ['id', 'username']

class BookSerializer(serializers.ModelSerializer):
    class Meta:
        model = Book
        fields = ['id', 'title']

class CourseBookListSerializer(serializers.ModelSerializer):
    teacher = TeacherSerializer(read_only=True)
    book = BookSerializer(read_only=True)

    class Meta:
        model = CourseBookList
        fields = '__all__'

class CourseBookListCreateSerializer(serializers.ModelSerializer):
    teacher = serializers.PrimaryKeyRelatedField(queryset=User.objects.filter(role='teacher'))
    book = serializers.PrimaryKeyRelatedField(queryset=Book.objects.all())

    class Meta:
        model = CourseBookList
        fields = ['course_id', 'teacher', 'book']
