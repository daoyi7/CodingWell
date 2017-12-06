export const state = () => ({
  auth_state: null,
  auth_username: null
})

export const mutations = {
  SET_STATUS (state) {
    state.auth_state = true || false
  },
  SET_USER (state, user) {
    state.auth_username = user || null
  }
}

export const getters = {
  isAuthLogin (state) {
    return !!state.auth_state
  },
  isAuthName (state) {
    return state.auth_username
  }
}
