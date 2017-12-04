<template>
  <section class="cdw-user-info cdw-wrap">
    <div class="cdw-user-header">
      <p class="crumbs">
        <nuxt-link to="/">CodingWell</nuxt-link>
        &nbsp;›&nbsp;
        <span>设置</span>
      </p>
    </div>
    <form class="cdw-update-info" action="" method="post">
      <div class="info-id info">
        CodingWell 第{{userData.id}}位用户
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
      <div class="info-birthday info">
        <label>生日</label>
        <input type="date" v-model="birthday">
      </div>
      <div class="info-userinfo info">
        <label>个人简介</label>
        <textarea rows="8" cols="80" v-model="userinfo"></textarea>
      </div>
      <div class="info-avatar info">
        <label>头像</label>
        <input type="text" v-model="avatar">
      </div>
    </form>
  </section>
</template>

<script>
import axios from '~/plugins/axios'

export default {
  data () {
    return {
      id: '',
      username: this.$route.params.username,
      email: '',
      telnumber: '',
      website: '',
      birthday: '',
      userinfo: '',
      avatar: ''
    }
  },
  asyncData ({ params, err }) {
    return axios.get('/api/userinfo/' + params.username)
      .then((res) => {
        console.log(res)
        return { userData: res.data }
      })
  }
}
</script>

<style lang="stylus" scoped>
.cdw-user-info
  .cdw-user-header
    .crumbs
      font-size 1.4rem
      padding 1rem 0
      border-bottom 1px solid #fbfbfb
  .cdw-update-info
    .info
      padding 1rem 0
      display flex
      align-items center
      label
        flex 0 0 5rem
        padding-right .8rem
        text-align right
      input
        height 2rem
      textarea
        resize none
      input, textarea
        border 1px solid #989898
        border-radius .3rem
</style>
