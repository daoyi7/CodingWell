<template>
<no-ssr>
  <section class="cdw-right-bar">
  <div class="box" v-if="isLogin">
    <div class="box-bg">
      <img :src="bg">
    </div>
    <div class="box-user">
      <nuxt-link to="/settings">
        <img :src='avatar'>
      </nuxt-link>
      <p class="username">{{username}}</p>
      <p class="usename">@<b>{{username}}</b></p>
    </div>
    <div class="box-profile">
      <nuxt-link to="/">
        <span class="tab">主题</span>
        <span class="num">999+</span>
      </nuxt-link>
      <nuxt-link to="/">
        <span class="tab">回复</span>
        <span class="num">999+</span>
      </nuxt-link>
      <nuxt-link to="/">
        <span class="tab">收藏</span>
        <span class="num">999+</span>
      </nuxt-link>
    </div>
    <div class="box-new">
      <nuxt-link to="/new"><i class="icon iconfont icon-write"></i>创建新主题</nuxt-link>
    </div>
  </div>
  <div class="box unlogin" v-if="!isLogin">
    <div class="unlogin-main">
      <nuxt-link class="login" to="/auth/login">
        <span>登录</span>
      </nuxt-link>
      <nuxt-link class="register" to="/auth/register">
        <span>注册</span>
      </nuxt-link>
    </div>
  </div>
</section>
</no-ssr>
</template>

<script>
import axios from '~/plugins/axios'
import NoSSR from 'vue-no-ssr'

export default {
  data () {
    return {
      username: 'CodingWell',
      bg: '/uploads/bg.png',
      avatar: '/uploads/default.png'
    }
  },
  mounted () {
    const store = this.$store.state

    if (store.auth_state) {
      this.username = store.auth_username

      axios.get('/api/userinfo/' + store.auth_username)
        .then((res) => {
          this.avatar = res.data.avatar
        })
    }
  },
  components: {
    'no-ssr': NoSSR
  },
  computed: {
    isLogin () {
      const store = this.$store.state

      return store.auth_state
    }
  }
}
</script>

<style lang="stylus" scoped>
.cdw-right-bar
  flex 0 0 23rem
  width 20rem
  overflow hidden
  .box
    background #fff
    box-shadow 0 0.2rem 0.2rem rgba(0, 0, 0, 0.1)
    .box-bg
      width 100%
      height 9rem
      overflow hidden
      img
        width 100%
        transform scale(1.5)
    .box-user
      position relative
      width 100%
      height auto
      background #fff
      a
        position absolute
        top -2.3rem
        left 1.5rem
        width 5rem
        height 5rem
        border-radius 50%
        border .5rem solid #fff
        overflow hidden
        background #fff
        img
          width 100%
      p
        padding-left 10rem
        &.username
          font-size 1.8rem
          font-weight 700
          line-height 2.1rem
        &.usename
          font-size 1.2rem
          color #657786
          b
            font-weight 600
            margin-left .2rem
    .box-profile
      padding 1.6rem
      background #fff
      display flex
      justify-content space-between
      a
        color rgb(101, 119, 134)
        text-align center
        border-right 1px solid #fbfbfb
        &:last-child
          border-right none
        &:hover
          span.tab
            color #76d067
        span
          display block
          &.tab
            font-size 1.3rem
            line-height 1.6rem
            overflow hidden
            letter-spacing .1rem
            font-weight 600
            transition color .15s ease-in-out
          &.num
            color #76d067
            font-size 1.7rem
            font-weight 700
            padding-top .3rem
    .box-new
      padding .2rem 1.6rem 1rem
      a
        i
          margin-right .3rem
          font-size .8rem
    &.unlogin
      min-height 8rem
      display flex
      justify-content center
      align-items center
      .unlogin-main
        .login,.register
          color #fff
          font-size 1.4rem
          text-decoration none
          padding .3rem .6rem
          background #76d067
          margin-right .8rem
</style>
