from django.urls import path
from .views import MyTokenObtainPairView, RegisterView, UserDetailView, UserListView, UserInfoView, LogoutView, user_login, TeacherListView, AllUsersView

urlpatterns = [
    path('user/login/', user_login, name='token_obtain_pair'),  # 使用自定义的登录视图
    path('user/register/', RegisterView.as_view(), name='register'),
    path('user/me/', UserDetailView.as_view(), name='user-detail'),
    path('user/list/', UserListView.as_view(), name='user-list'),
    path('user/info/', UserInfoView.as_view(), name='user-info'),
    path('user/logout/', LogoutView.as_view(), name='logout'),
    path('teachers/', TeacherListView.as_view(), name='teacher-list'),
    path('all-users/', AllUsersView.as_view(), name='all-users'),
]
