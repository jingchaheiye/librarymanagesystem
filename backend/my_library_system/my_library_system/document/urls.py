from django.urls import path
from .views import DocumentResourceListCreateView, DocumentResourceDetailView

urlpatterns = [
    path('document-resources/', DocumentResourceListCreateView.as_view(), name='document-resource-list-create'),
    path('document-resources/<int:pk>/', DocumentResourceDetailView.as_view(), name='document-resource-detail'),
]
