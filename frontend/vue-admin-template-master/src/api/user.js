import request from '@/utils/request'
import { setToken, setRefreshToken, getRefreshToken } from '@/utils/auth'

export function login(data) {
  return request({
    url: '/api/users/user/login/',
    method: 'post',
    data
  }).then(response => {
    const { access, refresh } = response.data
    setToken(access)
    setRefreshToken(refresh)
    return response
  })
}

export function getInfo(token) {
  return request({
    url: '/api/users/user/info/',
    method: 'get',
    params: { 'Authorization': `Bearer ${token}` }
  })
}

export function logout() {
  const refreshToken = getRefreshToken()
  return request({
    url: '/api/users/user/logout/',
    method: 'post',
    data: {
      refresh: refreshToken
    }
  })
}

export function register(data) {
  return request({
    url: '/api/users/user/register/',
    method: 'post',
    data
  }).then(response => {
    return response
  })
}

export function getBorrowRecords() {
  return request({
    url: '/api/borrow/borrow-records/',
    method: 'get'
  })
}

export function getUserInfo() {
  return request({
    url: '/api/users/user/me/',
    method: 'get'
  })
}

export function getAllUsers() {
  return request({
    url: '/api/users/all-users/',
    method: 'get'
  })
}
