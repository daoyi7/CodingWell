// import axios from 'axios'
//
// export const state = () => ({
//   authUser: null
// })
//
// export const mutations = {
//   SET_USER: function (state, user) {
//     state.authUser = user
//   }
// }
//
// export const actions = {
//   // nuxtServerInit is called by Nuxt.js before server-rendering every page
//   nuxtServerInit ({ commit }, { req }) {
//     if (req.session && req.session.authUser) {
//       commit('SET_USER', req.session.authUser)
//     }
//   },
//   async login ({ commit }, { username, password }) {
//     try {
//       const { data } = await axios.post('/api/login', { username, password })
//       commit('SET_USER', data)
//     } catch (error) {
//       if (error.response && error.response.status === 401) {
//         throw new Error('Bad credentials')
//       }
//       throw error
//     }
//   },
//
//   async logout ({ commit }) {
//     await axios.post('/api/logout')
//     commit('SET_USER', null)
//   }
//
// }

// import Vue from 'vue'
// import Vuex from 'vuex'
//
// Vue.use(Vuex)

export const state = () => ({
  auth_state: false,
  auth_username: null
})

export const mutations = {
  toggleAuthState (state) {
    if (state.auth_state) {
      state.auth_state = false
    } else {
      state.auth_state = true
    }
  }
}

// export const actions = {
//   goNav ({commit}) {
//     commit('go')
//   },
//   backNav ({commit}) {
//     commit('back')
//   }
// }
//
// export default new Vuex.Store({
//   state,
//   mutations,
//   actions
// })
