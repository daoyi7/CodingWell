<template>
<section class="container">
  <cdw-header :username = "this.username"/>
  <cdw-content :bbses="bbses"></cdw-content>
  <cdw-footer/>
</section>
</template>

<script>
import axios from '~/plugins/axios'
import Header from './Header'
import Footer from './Footer'
import Content from './Home/Content'

export default {
  data () {
    return {
      username: ''
    }
  },
  async asyncData () {
    let {
      data
    } = await axios.get('/api/content')
    return {
      bbses: data
    }
  },
  components: {
    'cdw-header': Header,
    'cdw-footer': Footer,
    'cdw-content': Content
  },
  mounted () {
    if (this.$store.state.auth_state) {
      this.username = this.$store.state.auth_username
    }
  }
}
</script>

<style lang="stylus" scoped>

</style>
