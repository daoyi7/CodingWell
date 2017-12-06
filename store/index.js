export const state = () => ({
  auth_state: null,
  auth_username: null,
  auth_data: null
})

export const mutations = {
  SET_STATUS (state, status) {
    state.auth_state = status || null
  },
  SET_USER (state, user) {
    state.auth_username = user || null
  },
  SET_USER_DATA (state, data) {
    state.auth_data = data || null
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
