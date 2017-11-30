<template>
<section class="container">
  <cdw-main :bbses="bbses"></cdw-main>
</section>
</template>

<script>
import axios from '~/plugins/axios'
import content from './Home/Content'

export default {
  async asyncData () {
    let {
      data
    } = await axios.get('/api/content')
    return {
      bbses: data
    }
  },
  components: {
    'cdw-main': content
  }
}
</script>

<style lang="stylus" scoped>

</style>
