import Cookies from 'js-cookie'

export default ({store, route, redirect}) => {
  if (Cookies.get('auth_state')) {
    store.commit('SET_STATUS', Cookies.get('auth_state'))
    store.commit('SET_USER', Cookies.get('username'))
  }
  console.log(route)
  if(store.state.auth_state) {
    if (route.name === 'auth-login') {
      return redirect('/')
    }
  }
}
