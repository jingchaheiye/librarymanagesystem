from rest_framework import generics
from .models import InterlibraryLoan
from .serializers import InterlibraryLoanSerializer
from rest_framework.permissions import IsAuthenticated
from library.models import Book

class InterlibraryLoanListCreateView(generics.ListCreateAPIView):
    queryset = InterlibraryLoan.objects.all()
    serializer_class = InterlibraryLoanSerializer

class InterlibraryLoanDetailView(generics.RetrieveUpdateDestroyAPIView):
    queryset = InterlibraryLoan.objects.all()
    serializer_class = InterlibraryLoanSerializer
    permission_classes = [IsAuthenticated]

    def perform_update(self, serializer):
        instance = serializer.save()
        if instance.status == 'returned':
            instance.book.status = 'available'
            instance.book.save()