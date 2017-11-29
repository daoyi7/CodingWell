<template>
  <section class="container">
    <section class="header">
      <header class="header_content">
        <nuxt-link to="/">
          <img src="~assets/img/codingwell.png" alt="CodingWell" class="logo" />
        </nuxt-link>
        <div class="dashboard">
          <nuxt-link to="/">
            <span>登录</span>
          </nuxt-link>
          <nuxt-link to="/">
            <span>注册</span>
          </nuxt-link>
        </div>
      </header>
    </section>
    <cdw-main :bbses = "bbses"></cdw-main>
  </section>
</template>

<script>
import axios from '~/plugins/axios'
import main from './main'

export default {
  async asyncData () {
    let { data } = await axios.get('/api/posts')
    return { bbses: data }
  },
  head () {
    return {
      title: 'CodingWell'
    }
  },
  components: {
    'cdw-main': main
  }
}
</script>

<style lang="stylus" scoped>
.header
  width 100%
  height 6rem
  overflow hidden
  background #ded5c4
  .header_content
    width 60%
    height 6rem
    display flex
    align-items center
    justify-content space-between
    margin 0 auto
    a
      img
        height: 4.5rem
    .dashboard
      a
        color #fff
        font-size 1.4rem
        text-decoration none
        padding .3rem .6rem
        background #76d067
        margin-right .8rem
.main
  width 100%
  .main_content
    width 60%
    margin 0 auto
    .posts_wrap
      width 100%
      .posts
        margin 0
        padding 0
        list-style none
        .post
          .post_item
            display flex
            justify-content space-between
            .post_user
              flex 0 0 6rem
              width 6rem
              height 6rem
              overflow hidden
              vertical-align middle
              display flex
              justify-content center
              align-items center
              a
                width 4rem
                height 4rem
                display block
                img
                  width 100%
                  border-radius .3rem
            .post_main
              flex 1
              vertical-align middle
              h2
                padding 0
                margin 0
                line-height 4rem

</style>
