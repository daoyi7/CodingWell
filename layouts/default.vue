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
  watch: {
    '$route' (to, from) {
      if (to.name === 'login') {
        this.hf_is_show = false
      } else if (to.name === 'register') {
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
