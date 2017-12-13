<template>
<section class="container">
  <cdw-content :contents="contents"></cdw-content>
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
  asyncData ({params, err}) {
    return axios.get('/api/content').then((res) => {
      return {
        contents: res.data
      }
    }).catch((err) => {
      console.error(err)
    })
    /**
    .then((res) => {
      // for (let i = 0; i < res.data.length; i++) {
      //   axios.get('/api/user/' + res.data[i].user_id).then((res) => {
      //     return {
      //       contentUser: res.data
      //     }
      //   }).catch((err) => {
      //     console.error(err)
      //   })
      // }
      console.log(res.data)
    })
    **/
  },
  components: {
    'cdw-content': Content
  },
  mounted () {
    if (this.$store.state.auth_state) {
      this.username = this.$store.state.auth_username
    }
    console.log(this.contents)
    console.log(this.contentUser)
  }
}
</script>

<style lang="stylus" scoped>

</style>
