import Cookies from 'js-cookie'

export default ({store}) => {
  if (Cookies.get('auth_state')) {
    store.commit('SET_STATUS', Cookies.get('auth_state'))
    store.commit('SET_USER', Cookies.get('username'))
  }
}
