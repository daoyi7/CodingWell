<template>
  <section class="cdw-right-bar">
    <div class="box">
      <div class="box-bg">
        <img :src="bg">
      </div>
      <div class="box-user">
        <nuxt-link to="/settings">
          <img :src="avatar">
        </nuxt-link>
        <p class="username">{{username}}</p>
        <p class="usename">@<b>{{username}}</b></p>
      </div>
      <div class="box-profile">
        <nuxt-link to="/">
          <span class="tab">粉丝</span>
          <span class="num">999+</span>
        </nuxt-link>
        <nuxt-link to="/">
          <span class="tab">粉丝</span>
          <span class="num">999+</span>
        </nuxt-link>
        <nuxt-link to="/">
          <span class="tab">粉丝</span>
          <span class="num">999+</span>
        </nuxt-link>
      </div>
    </div>
  </section>
</template>

<script>
import axios from '~/plugins/axios'

export default {
  data () {
    return {
      username: 'CodingWell',
      bg: '/uploads/bg.png',
      avatar: '/uploads/default.png'
    }
  },
  beforeMount () {
    const store = this.$store.state

    if (store.auth_state) {
      console.log(store)
      this.username = store.auth_username

      axios.get('/api/userinfo/' + store.auth_username)
        .then((res) => {
          this.avatar = res.data.avatar
        })
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
    border-radius .4rem
    box-shadow 0 0.2rem 0.3rem rgba(0, 0, 0, 0.1)
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
        width 6rem
        height 6rem
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
          line-height 2.5rem
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
</style>
