from rest_framework import serializers
from .models import BorrowRecord

class BorrowRecordSerializer(serializers.ModelSerializer):
    user_id = serializers.ReadOnlyField(source='user.id')
    book_title = serializers.ReadOnlyField(source='book.title')

    class Meta:
        model = BorrowRecord
        fields = ['id', 'user_id', 'book_title', 'status', 'due_date', 'return_date']