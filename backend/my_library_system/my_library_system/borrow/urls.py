from django.urls import path
from .views import BorrowRecordListCreateView, BorrowRecordDetailView, BorrowBookView, ReturnBookView

urlpatterns = [
    path('borrow-records/', BorrowRecordListCreateView.as_view(), name='borrow-record-list-create'),
    path('borrow-records/<int:pk>/', BorrowRecordDetailView.as_view(), name='borrow-record-detail'),
    path('borrow-records/<int:pk>/borrow/', BorrowBookView.as_view(), name='borrow-book'),
    path('borrow-records/<int:pk>/return/', ReturnBookView.as_view(), name='return-book'),
]
