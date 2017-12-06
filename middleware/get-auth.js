import axios from '~/plugins/axios'

export default ({store}) => {
  return axios.get('/api/userinfo/' + store.state.auth_username)
    .then((res) => {
      store.commit('SET_USER_DATA', res.data)
    })
}
