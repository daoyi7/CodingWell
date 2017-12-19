<template>
  <div class="cdw-login">
    <div class="cdw-login-bg"></div>
    <div class="cdw-login-box">
      <h2>欢迎回来</h2>
      <form class="cdw-login-main" action="/" method="post" @submit.prevent="onSubmit">
        <div class="cdw-login-username">
          <input v-focus type="text" name="username" placeholder="用户名" v-model="username">
        </div>
        <div class="cdw-login-psw">
          <input type="password" name="password" placeholder="密码" v-model="password">
        </div>
        <div class="cdw-login-warn" v-if="this.warn !== ''">
          <p>{{this.warn}}</p>
        </div>
        <button type="submit" name="button">登录</button>
        <div class="cdw-go-register">
          <nuxt-link to="/auth/forget">
            <span>忘记密码？</span>
          </nuxt-link>
          <nuxt-link to="/auth/register">
            <span>还没有账号？立即注册</span>
          </nuxt-link>
        </div>
      </form>
    </div>
    <transition name="fade">
      <cdw-alert
        v-if='alert_show'
        :content='alert_warn_content'
      ></cdw-alert>
    </transition>
  </div>
</template>

<script>
import Vue from 'vue'
import axios from '~/plugins/axios'
import Cookies from 'js-cookie'
import Alert from '~/pages/Alert'

Vue.directive('focus', {
  inserted: function (el) {
    el.focus()
  }
})

export default {
  data () {
    return {
      username: '',
      password: '',
      warn: '',
      alert_warn_content: '',
      alert_show: false
    }
  },
  head () {
    return {
      title: 'CodingWell | 登录'
    }
  },
  components: {
    'cdw-alert': Alert
  },
  methods: {
    onSubmit () {
      if (this.warn === '') {
        axios.post('/api/login', {
          username: this.username,
          password: this.password
        }).then((res) => {
          if (res.data.login_status === 1) {
            Cookies.set('username', res.data.username, { expires: 180 }, { path: '' })
            Cookies.set('auth_state', true, { expires: 180 }, { path: '' })

            this.$router.push('/')
          } else if (res.data.login_status === 0) {
            this.$store.state.auth_state = false

            this.warn = '密码错误'

            return false
          } else if (res.data.login_status === -1) {
            this.$store.state.auth_state = false
            this.warn = '用户名不存在'

            return false
          }
        })
      } else {
        this.alert_warn_content = this.warn
        this.alert_show = true

        return false
      }
    }
  },
  watch: {
    alert_show: function (val) {
      setTimeout(() => {
        this.alert_show = false
      }, 5000)
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
        // color #a94442
        color rgba(229, 57, 53, 0.8)
        border 1px solid rgba(229, 57, 53, 0.38)
        // background-color #f2dedeb0
        text-align center
      .cdw-go-register
        padding-top 1rem
        display flex
        justify-content space-between
        a:hover
          text-decoration underline
  .fade-enter-active, .fade-leave-active
    transition all .5s ease-in-out
  .fade-enter, .fade-leave-to
    opacity 0
</style>
