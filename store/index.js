export const state = () => ({
  auth_state: null,
  auth_username: null
})

// export const getters = {
//   addAuthUsername: (state, username) => {
//     console.log(state)
//     console.log(username)
//   }
// }

export const mutations = {
  toggleAuthState (state) {
    if (state.auth_state) {
      state.auth_state = false
    } else {
      state.auth_state = true
    }
  },
  addAuthUsername (state) {
    state.auth_username = localStorage.auth_username
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
