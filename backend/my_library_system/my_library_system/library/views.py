from rest_framework import generics
from .models import Book, Category
from .serializers import BookSerializer, BookCreateUpdateSerializer, CategorySerializer
from rest_framework.permissions import IsAuthenticated
from rest_framework.response import Response

class CategoryListCreateView(generics.ListCreateAPIView):
    queryset = Category.objects.all()
    serializer_class = CategorySerializer
    permission_classes = [IsAuthenticated]

class CategoryDetailView(generics.RetrieveUpdateDestroyAPIView):
    queryset = Category.objects.all()
    serializer_class = CategorySerializer
    permission_classes = [IsAuthenticated]

class BookListCreateView(generics.ListCreateAPIView):
    queryset = Book.objects.all()
    permission_classes = [IsAuthenticated]

    def get_serializer_class(self):
        if self.request.method in ['POST', 'PUT', 'PATCH']:
            return BookCreateUpdateSerializer
        return BookSerializer

class BookDetailView(generics.RetrieveUpdateDestroyAPIView):
    queryset = Book.objects.all()
    serializer_class = BookSerializer
    permission_classes = [IsAuthenticated]

    def get_serializer_class(self):
        if self.request.method in ['PUT', 'PATCH']:
            return BookCreateUpdateSerializer
        return BookSerializer
    
    def put(self, request, *args, **kwargs):
        book = self.get_object()
        book.stock = request.data.get('stock', book.stock)
        book.save()
        serializer = self.get_serializer(book)
        return Response(serializer.data)

class BookSearchView(generics.ListAPIView):
    serializer_class = BookSerializer

    def get_queryset(self):
        queryset = Book.objects.all()
        query = self.request.query_params.get('q', None)
        if query is not None:
            queryset = queryset.filter(title__icontains=query)
        return queryset
        

