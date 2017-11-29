<template>
  <div class="cdw-register">
    <div class="cdw-login-bg">
      <nuxt-link to="/">
        <i class="icon iconfont icon-home"></i>
      </nuxt-link>
    </div>
    <div class="cdw-register-box">
      <h2>加入 CodingWell</h2>
      <form class="cdw-register-main" action="/" method="post">
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
      </form>
    </div>
  </div>
</template>

<script>
export default {
  head () {
    return {
      title: 'CodingWell | 注册'
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
