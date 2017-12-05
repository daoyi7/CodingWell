<template>
  <section class="container">
    <div class="content">
      <main class="main">
        4<img src="~assets/img/cdw.png" alt="CodingWell" class="logo" />4
      </main>
      <h2 class="info">
        {{ error.message }}
      </h2>
      <div class="tohome">
        <nuxt-link class="button" to="/" v-if="error.statusCode === 404">
          CodingWell
        </nuxt-link>
      </div>
    </div>
  </section>
</template>
<script>
export default {
  head () {
    return {
      title: 'CodingWell | This page could not be found',
      link: [{
        rel: 'icon',
        type: 'image/x-icon',
        href: './404.ico'
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
      margin .3rem 0 1rem
    .tohome
      width 100%
      height 3rem
      text-align center
      line-height 3rem
      a
        color #000
        font-weight 700
        padding .6rem 1.6rem
        border 1px solid #000
        background #fff
        transition all linear .5s
        &:hover
          color #fff
          background #000
</style>
