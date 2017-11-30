<template>
<section class="container">
  <cdw-header></cdw-header>
  <cdw-main :bbses="bbses"></cdw-main>
</section>
</template>

<script>
import axios from '~/plugins/axios'
import header from './Header'
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
    'cdw-header': header,
    'cdw-main': content
  }
}
</script>

<style lang="stylus" scoped>

</style>
