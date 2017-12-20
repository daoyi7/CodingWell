<template>
<section class="container">
  <cdw-content :contents="contents"></cdw-content>
</section>
</template>

<script>
import axios from '~/plugins/axios'
import Content from '~/pages/Home/Content'

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
    this.users.map((u) => {
      axios.get('/api/user/' + u.id).then((res) => {
        // console.log(res.data)
      })
    })
  }
}
</script>

<style lang="stylus" scoped>

</style>
