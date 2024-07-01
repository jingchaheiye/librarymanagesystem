import Vue from 'vue'
import Router from 'vue-router'
import { getToken } from '@/utils/auth'
import store from '@/store'
/* Layout */
import Layout from '@/layout'
/* Book */
import BookList from '@/views/book/BookList'
import BookForm from '@/views/book/BookForm'
import UserView from '@/views/user/UserView'

Vue.use(Router)

export const asyncRoutes = [
  {
    path: '/example',
    component: Layout,
    children: [
      {
        path: 'index',
        name: 'Example',
        component: () => import('@/views/example/index'),
        meta: { title: 'Example', icon: 'example', roles: ['admin', 'editor'] }
      }
    ]
  }
]

export const constantRoutes = [
  {
    path: '/',
    component: Layout,
    redirect: '/dashboard',
    children: [{
      path: 'dashboard',
      name: 'Dashboard',
      component: () => import('@/views/dashboard/index'),
      meta: { title: '首页', icon: 'dashboard' }
    }]
  },
  {
    path: '/book',
    component: Layout,
    redirect: '/book/list',
    children: [
      {
        path: 'list',
        name: 'BookList',
        component: BookList,
        meta: { title: '图书列表', icon: 'nested' }
      },
      {
        path: 'edit/:id',
        name: 'EditBook',
        component: BookForm,
        hidden: true,
        meta: { title: 'Edit Book' }
      },
      {
        path: 'add',
        name: 'AddBook',
        component: BookForm,
        hidden: true,
        meta: { title: 'Add Book' }
      }
    ]
  },
  {
    path: '/',
    component: Layout,
    name: '高校图书馆',
    meta: { title: '高校图书馆', icon: 'el-icon-s-help' },
    children: [
      {
        path: 'course-books',
        component: () => import('@/views/course/CourseBooks'),
        name: 'CourseBookList',
        meta: { title: '课程书单管理', icon: 'form' }
      },
      {
        path: 'document-resource',
        component: () => import('@/views/document/resource'),
        name: 'DocumentResource',
        meta: { title: '文献资源管理', icon: 'tree' }
      }
    ]
  },
  {
    path: '/user',
    component: Layout,
    children: [
      {
        path: '',
        name: 'UserView',
        component: UserView,
        meta: { title: '个人中心', icon: 'user' }
      }
    ]
  },
  {
    path: '/login',
    name: 'Login',
    component: () => import('@/views/login/index'),
    hidden: true
  },
  {
    path: '/404',
    component: () => import('@/views/404'),
    hidden: true
  },
  {
    path: 'external-link',
    component: Layout,
    children: [
      {
        path: 'https://library.gdut.edu.cn/',
        meta: { title: 'External Link', icon: 'link' }
      }
    ]
  },
  { path: '*', redirect: '/404', hidden: true }
]

const createRouter = () => new Router({
  scrollBehavior: () => ({ y: 0 }),
  routes: constantRoutes
})

const router = createRouter()

router.beforeEach(async(to, from, next) => {
  const token = getToken()

  if (token) {
    if (to.path === '/login') {
      next({ path: '/' })
    } else {
      const hasRoles = store.getters.roles && store.getters.roles.length > 0
      if (hasRoles) {
        if (to.meta && to.meta.roles) {
          const hasAccess = store.getters.roles.some(role => to.meta.roles.includes(role))
          if (hasAccess) {
            next()
          } else {
            next({ path: '/404', replace: true })
          }
        } else {
          next()
        }
      } else {
        try {
          const { roles } = await store.dispatch('user/getInfo')
          const accessRoutes = await store.dispatch('permission/generateRoutes', roles)
          router.addRoutes(accessRoutes)
          next({ ...to, replace: true })
        } catch (error) {
          await store.dispatch('user/resetToken')
          Vue.prototype.$message.error('Failed to get user info, please log in again.')
          next({ path: '/login' })
        }
      }
    }
  } else {
    if (to.matched.some(record => record.meta.requiresAuth)) {
      next(`/login?redirect=${to.path}`)
    } else {
      next()
    }
  }
})

export function resetRouter() {
  const newRouter = createRouter()
  router.matcher = newRouter.matcher
}

export default router
