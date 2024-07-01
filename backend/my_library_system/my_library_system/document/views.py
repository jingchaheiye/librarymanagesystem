from rest_framework import generics, filters
from .models import DocumentResource
from .serializers import DocumentResourceSerializer

class DocumentResourceListCreateView(generics.ListCreateAPIView):
    queryset = DocumentResource.objects.all()
    serializer_class = DocumentResourceSerializer
    filter_backends = [filters.SearchFilter]
    search_fields = ['title', 'type']

class DocumentResourceDetailView(generics.RetrieveUpdateDestroyAPIView):
    queryset = DocumentResource.objects.all()
    serializer_class = DocumentResourceSerializer
