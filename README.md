# 图书管理系统
- [English Version](#english-version)
- [中文版](#中文版)

## English Version
<details>
<summary>Introduction</summary>
This project is a web-based library management system that provides functionality to manage books, users, borrowing records, and document resources. It includes features for different user roles, such as admin, teacher, and student, each with specific permissions.
</details>

<details>
<summary>Features</summary>
- **User Authentication**: Login, Logout, and role-based access control.
- **Book Management**: Add, edit, delete, and search for books.
- **User Management**: Admins can view and manage user information.
- **Borrow Records**: Users can borrow and return books.
- **Document Resource Management**: Manage and access various document resources.

</details>

<details>
<summary>Technologies Used</summary>
- **Frontend**: Vue.js, Vuex, Element-UI
- **Backend**: Django, Django REST framework
- **Database**: MySQL
- **Authentication**: JWT (JSON Web Token)
</details>

<details>
<summary>Installation</summary>

### Prerequisites

- Node.js and npm
- Python 3.x
- MySQL

### Clone the repository:
```sh
git clone https://github.com/jingchaheiye/librarymanagesystem.git

Backend Setup

cd library-management-system/backend/my_library_system/my_library_system

Install dependencies:

pip install -r requirements.txt

Configure the database settings in the settings.py file:

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.mysql',
        'NAME': 'library_system',
        'USER': 'your_username',
        'PASSWORD':your_password,',
        'HOST': 'localhost/your_host',
        'PORT': 'your_port',
    }
}

add library_system.sql to your MySQL database

Set up the database:
python manage.py migrate
python manage.py createsuperuser

Run the server:
python manage.py runserver

Frontend Setup

cd library-management-system/frontend/vue-admin-template-master

Install the dependencies:

npm install

Start the development server:

npm run dev
】
</details>
```

## 中文版
<details>
<summary>介绍</summary>


这是一个基于Web的图书管理系统，提供了管理图书、用户、借阅记录、文档资源等功能。系统提供了不同用户角色的权限，如管理员、教师、学生等，每个角色具有不同的权限。

</details>

<details>
<summary>功能</summary>

- **用户认证**：登录、登出、基于角色的访问控制。
- **图书管理**：添加、编辑、删除、搜索图书。
- **用户管理**：管理员可以查看和管理用户信息。
- **借阅记录**：用户可以借阅和归还图书。
- **文档资源管理**：管理和访问各种文档资源。

</details>

<details>
<summary>技术栈</summary>

- **前端**：Vue.js、Vuex、Element-UI
- **后端**：Django、Django REST framework
- **数据库**：MySQL
- **认证**：JWT（JSON Web Token）

</details>

<details>
<summary>安装</summary>

### 前提条件

- Node.js和npm
- Python 3.x
- MySQL


### 克隆仓库：
```sh
git clone https://github.com/jingchaheiye/librarymanagesystem.git

后端安装

cd library-management-system/backend/my_library_system/my_library_system

安装依赖：

pip install -r requirements.txt

配置数据库设置：

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.mysql',
        'NAME': 'library_system',
        'USER': 'your_username',
        'PASSWORD':your_password,',
        'HOST': 'localhost/your_host',
        'PORT': 'your_port',
    }
}

将library_system.sql文件导入到MySQL数据库

设置数据库：
python manage.py migrate
python manage.py createsuperuser

运行服务器：
python manage.py runserver

前端安装

cd library-management-system/frontend/vue-admin-template-master

安装依赖：

npm install

启动开发服务器：

npm run dev
```