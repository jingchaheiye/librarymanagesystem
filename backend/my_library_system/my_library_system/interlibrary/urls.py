from django.urls import path
from .views import InterlibraryLoanListCreateView, InterlibraryLoanDetailView

urlpatterns = [
    path('interlibrary-loans/', InterlibraryLoanListCreateView.as_view(), name='interlibrary-loan-list-create'),
    path('interlibrary-loans/<int:pk>/', InterlibraryLoanDetailView.as_view(), name='interlibrary-loan-detail'),
]
