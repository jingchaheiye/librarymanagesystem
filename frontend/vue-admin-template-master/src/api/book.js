import request from '@/utils/request'

const baseURL = 'http://localhost:8000/api/library'

export function getBooks() {
  return request({
    url: `${baseURL}/books/`,
    method: 'get'
  })
}

export function getBook(id) {
  return request({
    url: `${baseURL}/books/${id}/`,
    method: 'get'
  })
}

export function saveBook(book) {
  return request({
    url: book.id ? `${baseURL}/books/${book.id}/` : `${baseURL}/books/`,
    method: book.id ? 'put' : 'post',
    data: book
  })
}

export function deleteBook(id) {
  return request({
    url: `${baseURL}/books/${id}/`,
    method: 'delete'
  })
}

export function searchBooks(query) {
  return request({
    url: `${baseURL}/books/search/`,
    method: 'get',
    params: { q: query }
  })
}

export function borrowBook(id) {
  return request({
    url: `/api/borrow/borrow-records/${id}/borrow/`,
    method: 'post'
  })
}

export function returnBook(id) {
  return request({
    url: `/api/borrow/borrow-records/${id}/return/`,
    method: 'post'
  })
}

export function addBook(data) {
  return request({
    url: '/api/library/books/',
    method: 'post',
    data
  })
}

export function getCategories() {
  return request({
    url: '/api/library/categories/',
    method: 'get'
  })
}

export function updateBook(id, data) {
  return request({
    url: `${baseURL}/books/${id}/`,
    method: 'put',
    data
  })
}
