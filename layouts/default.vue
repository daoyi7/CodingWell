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
  components: {
    'cdw-header': Header,
    'cdw-footer': Footer
  },
  mounted () {
    let routeNameArray = ['auth-login', 'auth-register', null]
    let routeNameNullArray = ['Header', 'Footer', 'Home-Content', 'RightBar', 'Alert']
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
