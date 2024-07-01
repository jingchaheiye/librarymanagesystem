from rest_framework import generics, status, serializers
from rest_framework.response import Response
from rest_framework.permissions import IsAuthenticated
from .models import BorrowRecord
from .serializers import BorrowRecordSerializer
from library.models import Book
from rest_framework.views import APIView
from datetime import datetime, timedelta

class BorrowRecordListCreateView(generics.ListCreateAPIView):
    serializer_class = BorrowRecordSerializer
    permission_classes = [IsAuthenticated]

    def get_queryset(self):
        if self.request.user.is_superuser:
            return BorrowRecord.objects.all()
        return BorrowRecord.objects.filter(user=self.request.user)

    def perform_create(self, serializer):
        book = serializer.validated_data['book']
        if book.stock <= 0:
            raise serializers.ValidationError("No stock available for borrowing.")
        book.stock -= 1
        if book.stock == 0:
            book.status = 'unavailable'
        else:
            book.status = 'available'
        book.save()
        serializer.save(user=self.request.user)
    
class BorrowRecordDetailView(generics.RetrieveUpdateDestroyAPIView):
    serializer_class = BorrowRecordSerializer
    permission_classes = [IsAuthenticated]

    def get_queryset(self):
        if self.request.user.is_superuser:
            return BorrowRecord.objects.all()
        return BorrowRecord.objects.filter(user=self.request.user)
    
    def perform_update(self, serializer):
        if 'status' in serializer.validated_data and serializer.validated_data['status'] == 'returned':
            book = serializer.instance.book
            book.stock += 1
            book.status = 'available'
            book.save()
        serializer.save()

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
