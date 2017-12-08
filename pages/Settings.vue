<template>
<div class="cdw-user-settings cdw-wrap">
  <div class="settings-wrap-main">
    <div class="settings-wrap">
      <div class="cdw-user-header">
        <p class="crumbs">
          <nuxt-link to="/">CodingWell</nuxt-link>
          &nbsp;›&nbsp;
          <span>设置</span>
        </p>
      </div>
      <form class="cdw-update-settings" action="" method="post" @submit.prevent="onSubmit">
        <div class="settings-id settings">
          <p>
            <img :src='userData.avatar?userData.avatar:avatar'>
            <span>CodingWell 第{{userData.id}}位用户</span>
          </p>
        </div>
        <div class="settings-username settings">
          <label>用户名</label>
          <span>{{userData.username}}</span>
        </div>
        <div class="settings-email settings">
          <label>邮箱</label>
          <input type="email" v-model="email" :placeholder="userData.email" ref="email">
        </div>
        <div class="settings-telnumber settings">
          <label>手机</label>
          <input type="text" v-model="telnumber" :placeholder="userData.telnumber" ref="telnumber">
        </div>
        <div class="settings-website settings">
          <label>网站</label>
          <input type="text" v-model="website" :placeholder="userData.website" ref="website">
        </div>
        <div class="settings-userinfo settings">
          <label>个人简介</label>
          <textarea rows="8" cols="40" v-model="userinfo" :placeholder="userData.userinfo" ref="userinfo"></textarea>
        </div>
        <div class="settings-avatar settings">
          <label>头像</label>
          <input type="file" class="settings-avatar-input" ref="changeAvatar" @change="handleChange">
          <div class="settings-avatar-use" @click="changeAvatar" v-if="userData.avatar == ''">
            <img src='~assets/img/codingwell.png' v-if="avatar == ''">
            <img :src=avatar v-if="avatar !== ''">
          </div>
          <div class="settings-avatar-use" @click="changeAvatar" v-if="userData.avatar !== ''">
            <img :src='userData.avatar' v-if="avatar == './uploads/default.png'">
            <img :src=avatar v-if="avatar !== './uploads/default.png'">
          </div>
        </div>
        <div class="settings-submit settings">
          <button type="submit" name="button">保存设置</button>
        </div>
      </form>
    </div>
  </div>
  <cdw-right-bar></cdw-right-bar>
</div>
</template>

<script>
import axios from '~/plugins/axios'
import rightBar from '~/pages/RightBar'

export default {
  data () {
    return {
      email: '',
      telnumber: '',
      website: '',
      birthday: '',
      userinfo: '',
      avatar: '/uploads/default.png',
      userData: []
    }
  },
  // asyncData (context) {
  //   console.log(context)
  //   return axios.get('/api/userinfo/' + context.store.state.auth_username)
  //     .then((res) => {
  //       console.log(res.data)
  //       return {
  //         userData: res.data
  //       }
  //     })
  // },
  beforeCreate () {
    let store = this.$store
    axios.get('/api/userinfo/' + store.state.auth_username)
      .then((res) => {
        this.userData = res.data
      })
  },
  components: {
    'cdw-right-bar': rightBar
  },
  methods: {
    onSubmit () {
      axios.post('/api/settings', {
        username: this.$store.state.auth_username,
        email: this.email === '' ? this.$refs.email.placeholder : this.email,
        telnumber: this.telnumber === '' ? this.$refs.telnumber.placeholder : this.telnumber,
        website: this.website === '' ? this.$refs.website.placeholder : this.website,
        userinfo: this.userinfo === '' ? this.$refs.userinfo.placeholder : this.userinfo,
        avatar: this.avatar
      })
    },
    changeAvatar () {
      this.$refs.changeAvatar.click()
    },
    handleChange (e) {
      let files = e.target.files
      if (!files[0]) {
        return
      }
      let data = new FormData()
      data.append('image', files[0])
      axios.post(
        '/api/useravatar',
        data,
        { headers: { 'Content-Type': 'multipart/form-data' } }
      ).then((res) => {
        this.avatar = './uploads/' + res.data.filename
      })
    }
  }
}
</script>

<style lang="stylus" scoped>
.cdw-user-settings
  margin 0 auto
  display flex
  .settings-wrap-main
    flex-grow 3
    .settings-wrap
      margin 0
      padding 0
      width 98%
      background #fff
      border-radius .4rem
      .cdw-user-header
        .crumbs
          font-size 1.4rem
          padding 1rem
          border-bottom 1px solid #fbfbfb
      .cdw-update-settings
        .settings
          padding 1rem 0
          display flex
          align-items center
          &.settings-id
            padding 0
            width 100%
            height 3rem
            line-height 3rem
            p
              padding-left 5.8rem
              img
                width 1.8rem
                border-radius 50%
                vertical-align middle
                margin-right .8rem
              span
                vertical-align middle
          &.settings-username
            span
              font-size 1.3rem
              padding-left .5rem
          &.settings-submit
            padding-left 5.8rem
            button
              width 6.5rem
              height 2.5rem
              border none
              background #76d067
              color #fff
              border-radius .3rem
          label
            flex 0 0 5rem
            padding-right .8rem
            text-align right
            &.for-avatar
              text-align center
              padding .4rem .8rem
              background #76d067
              color #fff
              border-radius .3rem
          input, textarea
            border 1px solid #ccc
            border-radius .3rem
            padding 0 .5rem
            font-family '微软雅黑'
          input
            height 2rem
            line-height 2rem
            &.settings-avatar-input
              display none
          textarea
            resize none
            padding .5rem .5rem
          .settings-avatar-use
            width 4.5rem
            height 4.5rem
            overflow hidden
            border-radius .3rem
            img
              width 100%
              transform scale(1.1)
</style>
