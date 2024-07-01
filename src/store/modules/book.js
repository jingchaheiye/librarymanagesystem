// src/store/modules/book.js
import { getBooks } from '@/api/book'

const state = {
  books: []
}

const mutations = {
  SET_BOOKS: (state, books) => {
    state.books = books
  }
}

const actions = {
  fetchBooks({ commit }) {
    return new Promise((resolve, reject) => {
      getBooks().then(response => {
        commit('SET_BOOKS', response.data)
        resolve()
      }).catch(error => {
        reject(error)
      })
    })
  }
}

export default {
  namespaced: true,
  state,
  mutations,
  actions
}
