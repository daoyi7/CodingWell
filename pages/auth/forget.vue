<template>
  <div class="cdw-forget">
    <div class="cdw-forget-bg"></div>
    <div class="cdw-forget-box">
      <h2>修改密码</h2>
      <form class="cdw-forget-main" action="/" method="post" @submit.prevent="onSubmit">
        <div class="cdw-forget-username">
          <input v-focus type="text" name="username" placeholder="用户名" v-model="username">
        </div>
        <div class="cdw-forget-old-psw">
          <input type="password" name="password" placeholder="旧密码" v-model="old_password">
        </div>
        <div class="cdw-forget-new-psw">
          <input type="password" name="password" placeholder="新密码" v-model="new_password">
        </div>
        <div class="cdw-forget-warn" v-if="this.warn !== ''">
          <p>{{this.warn}}</p>
        </div>
        <button type="submit" name="button">修改</button>
        <div class="cdw-go-login">
          <nuxt-link to="/auth/login">
            <span>想起密码了！</span>
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
      old_password: '',
      new_password: '',
      warn: '',
      alert_warn_content: '',
      alert_show: false
    }
  },
  head () {
    return {
      title: 'CodingWell | 忘记密码'
    }
  },
  components: {
    'cdw-alert': Alert
  },
  methods: {
    onSubmit () {
      if (this.warn === '') {
        axios.post('/api/forget', {
          username: this.username,
          old_password: this.old_password,
          new_password: this.new_password
        }).then((res) => {
          if (res.data.forget_status === 1) {
            this.$router.push('/auth/login')
          } else if (res.data.forget_status === 0) {
            this.warn = '旧密码错误'

            return false
          } else if (res.data.forget_status === -1) {
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
    new_password: function (val) {
      const len = val.length

      if (val.search(/ /g) === -1) {
        if (len < 10) {
          this.warn = '请设置新密码为十位数以上'
        } else {
          this.warn = ''
        }
      } else if (val.search(/ /g) !== -1) {
        this.warn = '新密码不能包含空格'
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
.cdw-forget
  position relative
  width 100vw
  height 100vh
  background-image url('~assets/img/bg1.png')
  background-size cover
  display flex
  justify-content center
  align-items center
  .cdw-forget-bg
    position fixed
    top 0
    left 0
    width 100%
    height 100%
    background #fff
    opacity 0.3
  .cdw-forget-box
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
    .cdw-forget-main
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
