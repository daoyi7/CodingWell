<template>
  <div class="cdw-login">
    <div class="cdw-login-bg"></div>
    <div class="cdw-login-box">
      <h2>欢迎回来</h2>
      <form class="cdw-login-main" action="/" method="post" @submit.prevent="onSubmit">
        <div class="cdw-login-username">
          <input type="text" name="username" placeholder="用户名" v-model="username">
        </div>
        <div class="cdw-login-psw">
          <input type="password" name="password" placeholder="密码" v-model="password">
        </div>
        <div class="cdw-login-warn" v-if="this.warn !== ''">
          <p>{{this.warn}}</p>
        </div>
        <button type="submit" name="button">登录</button>
        <div class="cdw-go-login">
          <nuxt-link to="/register">
            <span>还没有账号？立即注册</span>
          </nuxt-link>
        </div>
      </form>
    </div>
  </div>
</template>

<script>
import axios from '~/plugins/axios'

export default {
  data () {
    return {
      username: '',
      password: '',
      warn: ''
    }
  },
  head () {
    return {
      title: 'CodingWell | 登录'
    }
  },
  methods: {
    onSubmit () {
      axios.post('/api/login', {
        username: this.username,
        password: this.password
      }).then((res) => {
        if (res.data.login_status === 1) {
          this.$store.state.auth_state = true
          this.$store.state.auth_username = res.data.username

          this.$router.push('/')
        } else if (res.data.login_status === 0) {
          this.$store.state.auth_state = false

          this.warn = '密码错误'
        } else if (res.data.login_status === -1) {
          this.$store.state.auth_state = false
          this.warn = '用户不存在'
        }
      })
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
      p
        padding .8rem 0
        color #a94442
        background-color #f2dedeb0
        text-align center
      .cdw-go-login
        padding-top 1rem
        text-align right
        a:hover
          text-decoration underline
</style>
