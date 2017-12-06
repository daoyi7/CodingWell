import Cookies from 'js-cookie'
import axios from '~/plugins/axios'

export default ({store, route, redirect}) => {
  if (Cookies.get('auth_state')) {
    store.commit('SET_STATUS', Cookies.get('auth_state'))
    store.commit('SET_USER', Cookies.get('username'))
    axios.get('/api/userinfo/' + store.state.auth_username)
      .then((res) => {
        store.commit('SET_USER_DATA', res.data)
      })
  }
  if (store.state.auth_state) {
    if (route.name === 'auth-login') {
      return redirect('/')
    }
  }
}
