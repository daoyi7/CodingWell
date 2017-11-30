<template>
  <section class="container">
    <div class="content">
      <main class="main">
        4<img src="~assets/img/cdw.png" alt="CodingWell" class="logo" />4
      </main>
      <h2 class="info">
        {{ error.message }}
      </h2>
      <nuxt-link class="button" to="/" v-if="error.statusCode === 404">
        Homepage
      </nuxt-link>
    </div>
  </section>
</template>
<script>
export default {
  head () {
    return {
      title: 'CodingWell | 404',
      link: [{
        rel: 'icon',
        type: 'image/x-icon',
        href: '/404.ico'
      }]
    }
  },
  props: ['error']
}
</script>

<style lang="stylus" scoped>
.container
  height 100vh
  display flex
  justify-content center
  align-items center
  .content
    margin-bottom 20rem
    text-align center
    .main
      font-size 11rem
      img
        margin 0 1rem
    .info
      padding 1rem 0
</style>
