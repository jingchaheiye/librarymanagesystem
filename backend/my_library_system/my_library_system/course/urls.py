from django.urls import path
from .views import CourseBookListListCreateView, CourseBookListDetailView

urlpatterns = [
    path('course-booklists/', CourseBookListListCreateView.as_view(), name='course-booklist-list-create'),
    path('course-booklists/<int:pk>/', CourseBookListDetailView.as_view(), name='course-booklist-detail'),
]
