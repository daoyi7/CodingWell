<template>
  <div class="cdw-login">
    <div class="cdw-login-bg"></div>
    <div class="cdw-login-box">
      <h2>欢迎回来</h2>
      <form class="cdw-login-main" action="" method="post">
        <div class="cdw-login-username">
          <input type="text" name="username" placeholder="用户名">
        </div>
        <div class="cdw-login-psw">
          <input type="password" name="password" placeholder="密码">
        </div>
        <button type="submit" name="button">登录</button>
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
  .cdw-login-box
    position fixed
    z-index 3
    width 20vw
    padding-bottom 21rem
    h2
      text-align center
      line-height 2rem
      font-size 1.8rem
      color #022d50
    .cdw-login-main
      padding 0 3rem
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
</style>
