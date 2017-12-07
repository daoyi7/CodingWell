<template>
  <div class="cdw-user-info cdw-wrap">
    <div class="info-wrap-main">
      {{userData.username}}
      {{userData.id}}
    </div>
    <cdw-right-bar></cdw-right-bar>
  </div>
</template>

<script>
import axios from '~/plugins/axios'
import RightBar from '~/pages/RightBar'

export default {
  data () {
    return {
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
        console.log(res.data)
        return {
          userData: res.data
        }
      })
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
          input
            height 2rem
          textarea
            resize none
          input, textarea
            border 1px solid #989898
            border-radius .3rem
            padding 0 .5rem
</style>
