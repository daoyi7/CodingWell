<template>
  <div class="cdw-user-info cdw-wrap">
    <div class="info-wrap-main">
      <div class="info-wrap">
        <div class="info-header">
          <div class="info-header-crumbs">
            <p class="crumbs">
              <nuxt-link to="/">CodingWell</nuxt-link>
              &nbsp;›&nbsp;
              <span>{{userData.username}}</span>
            </p>
          </div>
          <div class="info-header-main">
            <div class="info-avatar">
              <img :src="userData.avatar?userData.avatar:vatar">
            </div>
            <div class="info-profile">
              <h2>{{userData.username}}</h2>
              <p>CodingWell第{{userData.id}}位会员，加入于{{userData.created_time | createdTime}}</p>
            </div>
          </div>
        </div>
        <div class="info-others" v-if='userData.website'>
          <a :href="userData.website" target="_blank">
            <i class="icon iconfont icon-link5"></i>
            <span>{{userData.website}}</span>
          </a>
        </div>
      </div>
      <div class="user-posts">
        <div class="tabs">
          <span class="tabs-active">发布的主题</span>
          <span>发布的回复</span>
        </div>
        <div class="posts-lists">

        </div>
      </div>
    </div>
    <cdw-right-bar></cdw-right-bar>
  </div>
</template>

<script>
import axios from '~/plugins/axios'
import RightBar from '~/pages/rightbar'

export default {
  data () {
    return {
      username: this.$route.params.username,
      email: '',
      telnumber: '',
      website: '',
      birthday: '',
      userinfo: '',
      avatar: '/uploads/default.png'
    }
  },
  asyncData ({params, err}) {
    return axios.get('/api/userinfo/' + params.username)
      .then((res) => {
        return {
          userData: res.data
        }
      })
  },
  filters: {
    createdTime: function (val) {
      return new Date(val).toLocaleDateString()
    }
  },
  components: {
    'cdw-right-bar': RightBar
  },
  methods: {
    onSubmit () {
      axios.post('/api/register', {
        email: this.email,
        telnumber: this.telnumber,
        website: this.website,
        birthday: this.birthday,
        userinfo: this.userinfo
      })
    }
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
      overflow hidden
      .info-header
        background #fff
        .info-header-crumbs
          .crumbs
            font-size 1.4rem
            padding .6rem 1rem
            border-bottom 1px solid #fbfbfb
        .info-header-main
          display flex
          padding 1rem 1rem
          .info-avatar
            flex 0 0 5rem
            height 5rem
            border .2rem solid #fff
            border-radius .3rem
            overflow hidden
            img
             width 100%
       .info-profile
        padding-left 2rem
        h2
          font-size 1.8rem
          padding-top .5rem
          line-height 3rem
        p
          color #657786
          letter-spacing .08rem
      .info-others
        border-top 1px solid #fbfbfb
        padding .8rem 1rem
        background #fff
        a
          color #000
          font-size 1.4rem
          text-decoration underline
    .user-posts
      width 98%
      height 50rem
      margin 1rem 0 0 0
      background #fff
      .tabs
        border-bottom 1px solid #fbfbfb
        span
          padding 0 1.5rem
          display inline-block
          line-height 3rem
          color #000
          font-size 1.4rem
          &.tabs-active
            font-weight 700
            border-bottom 1px solid #76d067
</style>
