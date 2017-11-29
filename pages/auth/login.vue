<template>
  <div class="cdw-login">
    <div class="cdw-login-bg">
      <nuxt-link to="/">
        <i class="icon iconfont icon-home"></i>
      </nuxt-link>
    </div>
    <div class="cdw-login-box">
      <h2>欢迎回来</h2>
      <form class="cdw-login-main" action="/" method="post">
        <div class="cdw-login-username">
          <input type="text" name="username" placeholder="用户名">
        </div>
        <div class="cdw-login-psw">
          <input type="password" name="password" placeholder="密码">
        </div>
        <button type="submit" name="button">登录</button>
        <div class="cdw-go-register">
          <nuxt-link to="/register">
            <span>还没有账号？立即注册</span>
          </nuxt-link>
        </div>
      </form>
    </div>
  </div>
</template>

<script>
export default {
  head () {
    return {
      title: 'CodingWell | 登录'
    }
  }
}
</script>

<style lang="stylus" scoped>
.cdw-login
  position relative
  width 100vw
  height 100vh
  background-image url('~assets/img/bg1.png')
  background-size cover
  display flex
  justify-content center
  align-items center
  .cdw-login-bg
    position fixed
    top 0
    left 0
    width 100%
    height 100%
    background #fff
    opacity 0.3
    a
      i
        font-size 5rem
        color #76d067
        font-weight 700
  .cdw-login-box
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
    .cdw-login-main
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
      .cdw-go-register
        padding-top 1rem
        text-align right
        a:hover
          text-decoration underline
</style>
