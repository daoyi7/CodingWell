<template>
  <div class="cdw-register">
    <div class="cdw-register-bg"></div>
    <div class="cdw-register-box">
      <h2>加入 <nuxt-link to="/">CodingWell</nuxt-link></h2>
      <form class="cdw-register-main" action="/auth/login" method="post" @submit.prevent="onSubmit">
        <div class="cdw-register-username">
          <input v-focus type="text" name="username" placeholder="用户名" v-model="username">
        </div>
        <div class="cdw-register-psw">
          <input type="password" name="password" placeholder="密码" v-model="password">
        </div>
        <div class="cdw-register-warn" v-if="warn !== ''">
          <p>{{warn}}</p>
        </div>
        <button type="submit" name="button">注册</button>
        <div class="cdw-go-login">
          <nuxt-link to="/auth/login">
            <span>已有账号？立即登录</span>
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
      avatar: {
        type: String,
        default: '/uploads/default.png'
      },
      warn: '',
      alert_warn_content: '',
      alert_show: false
    }
  },
  head () {
    return {
      title: 'CodingWell | 注册'
    }
  },
  components: {
    'cdw-alert': Alert
  },
  methods: {
    onSubmit () {
      if (this.warn === '') {
        if (this.username !== '' && this.password !== '') {
          axios.post('/api/register', {
            username: this.username,
            password: this.password,
            avatar: this.avatar.default
          }).then((res) => {
            if (res.data.reg_status === -1) {
              // return false
              this.warn = '用户名已存在'
            } else if (res.data.reg_status === 1) {
              this.$router.push('/auth/login')
            }
          })
        } else {
          this.warn = '用户名或密码不能为空'

          return false
        }
      } else {
        this.alert_warn_content = this.warn
        this.alert_show = true

        return false
      }
    }
  },
  watch: {
    username: function (val) {
      const Reg = new RegExp('[\u4e00-\u9fa5]')
      const RegSemicon = val.search(/[ |~|`|!|@|#|$|%|^|&|*|(|)|-|+|=|?|"|“|”|;|:|；|：]/g)

      if (RegSemicon === -1) {
        if (Reg.test(val)) {
          this.warn = '用户名请使用英文或数字'
        } else if (val.length > 1000) {
          this.warn = '已达到用户名长度上限制'
        } else {
          this.warn = ''
        }
      } else if (RegSemicon !== -1) {
        this.warn = '用户名不能包含符号'
      } else {
        this.warn = ''
      }
    },
    password: function (val) {
      const len = val.length

      if (val.search(/ /g) === -1) {
        if (len < 10) {
          this.warn = '请设置密码为十位数以上'
        } else if (val.length > 1000) {
          this.warn = '已达到密码长度上限制'
        } else {
          this.warn = ''
        }
      } else if (val.search(/ /g) !== -1) {
        this.warn = '密码不能包含空格'
      } else {
        this.warn = ''
      }
    },
    alert_show: function (val) {
      setTimeout(() => {
        this.alert_show = false
      }, 5000)
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
      p
        padding .8rem 0
        // color #a94442
        color rgba(229, 57, 53, 0.8)
        border 1px solid rgba(229, 57, 53, 0.38)
        // background-color #f2dedeb0
        text-align center
      .cdw-go-login
        padding-top 1rem
        text-align right
        a:hover
          text-decoration underline
  .fade-enter-active, .fade-leave-active
    transition all .5s ease-in-out
  .fade-enter, .fade-leave-to
    opacity 0
</style>
