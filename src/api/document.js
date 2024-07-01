import request from '@/utils/request'

export function getDocuments() {
  return request({
    url: '/api/document/document-resources/',
    method: 'get'
  })
}

export function searchDocuments(query) {
  return request({
    url: '/api/document/document-resources/',
    method: 'get',
    params: { search: query }
  })
}

export function addDocument(data) {
  return request({
    url: '/api/document/document-resources/',
    method: 'post',
    data
  })
}

export function deleteDocument(id) {
  return request({
    url: `/api/document/document-resources/${id}/`,
    method: 'delete'
  })
}
