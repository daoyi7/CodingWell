<template>
<section class="container">
  <cdw-content :contents="contents" :users="users"></cdw-content>
</section>
</template>

<script>
import axios from '~/plugins/axios'
import Content from '~/pages/home/content'

export default {
  data () {
    return {
      username: ''
    }
  },
  async asyncData () {
    let contents = (await axios.get('/api/content')).data
    let users = (await axios.get('/api/user')).data

    return {
      contents: contents,
      users: users
    }
  },
  components: {
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
