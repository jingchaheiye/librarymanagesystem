from rest_framework import generics, status, serializers
from rest_framework.permissions import IsAuthenticated
from rest_framework.response import Response
from rest_framework.views import APIView
from datetime import datetime, timedelta
from .models import CourseBookList
from borrow.models import BorrowRecord
from .serializers import CourseBookListSerializer, CourseBookListCreateSerializer
from users.models import User
from library.models import Book
from users.serializers import UserSerializer
from django.db.models import Q

class CourseBookListListCreateView(generics.ListCreateAPIView):
    queryset = CourseBookList.objects.all()
    serializer_class = CourseBookListSerializer
    permission_classes = [IsAuthenticated]

    def get_serializer_class(self):
        if self.request.method in ['POST', 'PUT', 'PATCH']:
            return CourseBookListCreateSerializer
        return CourseBookListSerializer

    def get_queryset(self):
        user = self.request.user
        queryset = CourseBookList.objects.all()
        if user.role == 'teacher':
            queryset = queryset.filter(teacher=user)
        if user.role == 'student':
            queryset = CourseBookList.objects.all()

        search_query = self.request.query_params.get('search', None)
        if search_query:
            queryset = queryset.filter(
                Q(course_id__icontains=search_query) |
                Q(teacher__username__icontains=search_query) |
                Q(book__title__icontains=search_query)
            )
        return queryset

    def perform_create(self, serializer):
        user = self.request.user
        if user.role == 'admin' or user.role == 'teacher':
            if user.role == 'teacher':
                serializer.save(teacher=user)
            else:
                serializer.save()
        else:
            raise serializers.ValidationError("You do not have permission to add course book lists.")
        
class CourseBookListDetailView(generics.RetrieveUpdateDestroyAPIView):
    queryset = CourseBookList.objects.all()
    serializer_class = CourseBookListSerializer
    permission_classes = [IsAuthenticated]

class TeacherListView(generics.ListAPIView):
    queryset = User.objects.filter(role='teacher')
    serializer_class = UserSerializer
    permission_classes = [IsAuthenticated]

class BorrowBookView(APIView):
    permission_classes = [IsAuthenticated]

    def post(self, request, pk):
        try:
            book = Book.objects.get(pk=pk)
            if book.stock <= 0:
                return Response({"detail": "No stock available for borrowing."}, status=status.HTTP_400_BAD_REQUEST)
            book.stock -= 1
            if book.stock == 0:
                book.status = 'unavailable'
            book.save()
            due_date = datetime.now() + timedelta(days=14)
            BorrowRecord.objects.create(user=request.user, book=book, status='borrowed', due_date=due_date)
            return Response({"detail": "Book borrowed successfully."}, status=status.HTTP_200_OK)
        except Book.DoesNotExist:
            return Response({"detail": "Book not found."}, status=status.HTTP_404_NOT_FOUND)

class ReturnBookView(APIView):
    permission_classes = [IsAuthenticated]

    def post(self, request, pk):
        try:
            record = BorrowRecord.objects.get(pk=pk, user=request.user)
            if record.status != 'borrowed':
                return Response({"detail": "Book not borrowed."}, status=status.HTTP_400_BAD_REQUEST)
            record.status = 'returned'
            record.return_date = datetime.now()
            record.save()
            book = record.book
            book.stock += 1
            book.status = 'available'
            book.save()
            return Response({"detail": "Book returned successfully."}, status=status.HTTP_200_OK)
        except BorrowRecord.DoesNotExist:
            return Response({"detail": "Borrow record not found."}, status=status.HTTP_404_NOT_FOUND)