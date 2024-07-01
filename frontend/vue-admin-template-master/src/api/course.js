import request from '@/utils/request'

const baseURL = 'http://localhost:8000/api/course'

// 获取所有课程书目列表
export function getCourseBooks() {
  return request({
    url: `${baseURL}/course-booklists/`,
    method: 'get'
  })
}

// 添加新的课程书目
export function addCourseBook(data) {
  return request({
    url: `${baseURL}/course-booklists/`,
    method: 'post',
    data
  })
}

// 删除课程书目
export function deleteCourseBook(id) {
  return request({
    url: `${baseURL}/course-booklists/${id}/`,
    method: 'delete'
  })
}

// 获取教师列表
export function getTeachers() {
  return request({
    url: '/api/users/teachers/', // 这个 URL 假设你有一个 API 端点来获取所有教师
    method: 'get'
  })
}

// 获取书籍列表
export function getBooks() {
  return request({
    url: '/api/library/books/',
    method: 'get'
  })
}

export function borrowBook(bookId) {
  return request({
    url: `http://localhost:8000/api/borrow/borrow-records/${bookId}/borrow/`,
    method: 'post'
  })
}

export function searchCourseBooks(query) {
  return request({
    url: `${baseURL}/course-booklists/`,
    method: 'get',
    params: { search: query }
  })
}
