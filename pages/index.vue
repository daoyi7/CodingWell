<template>
<section class="container">
  <cdw-content :bbses="bbses"></cdw-content>
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
    let {data} = await axios.get('/api/content')
    return {
      bbses: data
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
