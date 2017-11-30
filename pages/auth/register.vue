<template>
  <div class="cdw-register">
    <div class="cdw-register-bg"></div>
    <div class="cdw-register-box">
      <h2>加入 <nuxt-link to="/">CodingWell</nuxt-link></h2>
      <form class="cdw-register-main" action="" method="post">
        <div class="cdw-register-username">
          <input type="text" name="username" placeholder="用户名">
        </div>
        <div class="cdw-register-psw">
          <input type="password" name="password" placeholder="密码">
        </div>
        <button type="submit" name="button">注册</button>
        <div class="cdw-go-login">
          <nuxt-link to="/login">
            <span>已有账号？立即登录</span>
          </nuxt-link>
        </div>
        <button @click="sbreg" type="button" name="button">123</button>
      </form>
    </div>
  </div>
</template>

<script>
import axios from '~/plugins/axios'

export default {
  head () {
    return {
      title: 'CodingWell | 注册'
    }
  },
  methods: {
    sbreg () {
      axios.post('/api/test', {
        username: 'Fred',
        password: 'Flintstone'
      })
    }
  }
}
</script>

<style lang="stylus" scoped>
.cdw-register
  position relative
  width 100vw
  height 100vh
  background-image url('~assets/img/bg1.png')
  background-size cover
  display flex
  justify-content center
  align-items center
  .cdw-register-bg
    position fixed
    top 0
    left 0
    width 100%
    height 100%
    background #fff
    opacity 0.3
  .cdw-register-box
    position fixed
    z-index 3
    width 25rem
    padding-bottom 21rem
    h2
      text-align center
      line-height 3rem
      padding 1.2rem 0 0
      font-size 1.8rem
      color #76d067
      background #fff
      margin 0
      a
        position relative
        &:after
          content ''
          position absolute
          width 100%
          height 1px
          border-bottom 1px solid #76d067
          left 0
          bottom -.2rem
          transform scaleX(0)
          transition all linear .2s
        &:hover
          &:after
            transform scaleX(1)
    .cdw-register-main
      padding 2rem 3rem 2rem
      background #fff
      input
        width 100%
        height 3rem
        border none
        border-bottom 1px solid #eee
        margin-bottom 1rem
        text-indent .8rem
      button
        width 100%
        height 3rem
        border none
        background #76d067
        color #fff
        margin-top 1rem
      .cdw-go-login
        padding-top 1rem
        text-align right
        a:hover
          text-decoration underline
</style>
