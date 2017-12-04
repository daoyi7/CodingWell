<template>
<div class="cdw-user-info cdw-wrap">
  <section class="info-wrap-main">
    <div class="info-wrap">
      <div class="cdw-user-header">
        <p class="crumbs">
          <nuxt-link to="/">CodingWell</nuxt-link>
          &nbsp;›&nbsp;
          <span>设置</span>
        </p>
      </div>
      <form class="cdw-update-info" action="" method="post" @submit.prevent="onSubmit">
        <div class="info-id info">
          <p>
            <img src="~assets/img/codingwell.png">
            <span>CodingWell 第{{userData.id}}位用户</span>
          </p>
        </div>
        <div class="info-username info">
          <label>用户名</label>
          <span>{{username}}</span>
        </div>
        <div class="info-email info">
          <label>邮箱</label>
          <input type="email" v-model="email">
        </div>
        <div class="info-telnumber info">
          <label>手机</label>
          <input type="text" v-model="telnumber">
        </div>
        <div class="info-website info">
          <label>网站</label>
          <input type="text" v-model="website">
        </div>
        <div class="info-userinfo info">
          <label>个人简介</label>
          <textarea rows="8" cols="80" v-model="userinfo"></textarea>
        </div>
        <div class="info-avatar info">
          <label>头像</label>
          <label class="for-avatar" for="xFile">上传文件</label>
          <input type="file" id="xFile" style="position:absolute;clip:rect(0 0 0 0);">
        </div>
        <div class="info-submit info">
          <button type="submit" name="button">保存设置</button>
        </div>
      </form>
    </div>
  </section>
  <cdw-right-bar></cdw-right-bar>
</div>
</template>

<script>
import axios from '~/plugins/axios'
import RightBar from '~/pages/RightBar'

export default {
  data () {
    return {
      id: '',
      username: this.$route.params.username,
      email: '',
      telnumber: '',
      website: '',
      birthday: '',
      userinfo: ''
    }
  },
  asyncData ({params, err}) {
    return axios.get('/api/userinfo/' + params.username)
      .then((res) => {
        console.log(res)
        return {
          userData: res.data
        }
      })
  },
  components: {
    'cdw-right-bar': RightBar
  }
}
</script>

<style lang="stylus" scoped>
.cdw-user-info
  margin 0 auto
  display flex
  .info-wrap-main
    flex-grow 3
    .info-wrap
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
      .cdw-update-info
        .info
          padding 1rem 0
          display flex
          align-items center
          &.info-id
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
          &.info-submit
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
              box-shadow 1px 1px 1px 1px #cccccc
          input
            height 2rem
          textarea
            resize none
          input, textarea
            border 1px solid #989898
            border-radius .3rem
            padding 0 .5rem
</style>
