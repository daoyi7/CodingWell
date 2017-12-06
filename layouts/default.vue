<template>
  <div class="codingwell">
    <cdw-header v-if="hf_is_show"/>
    <nuxt/>
    <cdw-footer v-if="hf_is_show"/>
  </div>
</template>

<script>
import Header from '~/pages/Header'
import Footer from '~/pages/Footer'
// import Cookies from 'js-cookie'

export default {
  data () {
    return {
      hf_is_show: true
    }
  },
  // beforeMount () {
  //   console.log(Cookies.get('auth_state'))
  //   if (Cookies.get('auth_state')) {
  //     console.log(1)
  //   }
  //   // this.$store.commit('SET_STATUS', Cookies.get('auth_state'))
  //   // this.$store.commit('SET_USER', Cookies.get('username'))
  // },
  components: {
    'cdw-header': Header,
    'cdw-footer': Footer
  },
  mounted () {
    let routeNameArray = ['auth-login', 'auth-register', null]
    let routeNameNullArray = ['Header', 'Footer', 'Home-Content', 'RightBar']
    let _thisRouteName = this.$router.currentRoute.name

    if (routeNameArray.indexOf(_thisRouteName) !== -1) {
      this.hf_is_show = false
    }

    if (routeNameNullArray.indexOf(_thisRouteName) !== -1) {
      this.$router.push('/404')
    }
  },
  watch: {
    '$route' (to, from) {
      if (to.name === 'auth-login') {
        this.hf_is_show = false
      } else if (to.name === 'auth-register') {
        this.hf_is_show = false
      } else if (to.name === null) {
        this.hf_is_show = false
      } else {
        this.hf_is_show = true
      }
    }
  }
}
</script>

<style lang="stylus" scoped>
</style>
