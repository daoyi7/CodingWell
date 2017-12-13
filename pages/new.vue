<template>
  <div class="cdw-new cdw-wrap">
    <div class="new-main">
      <div class="new-wrap">
        <div class="new-crumbs">
          <p class="crumbs">
            <nuxt-link to="/">CodingWell</nuxt-link>
            &nbsp;›&nbsp;
            <span>创建新主题</span>
          </p>
        </div>
        <form class="new-form" action="/" method="post" @submit.prevent="onSubmit">
          <p class="new-title">主题标题</p>
          <div class="new-title-input">
            <input
              type="text"
              placeholder="主题标题"
              v-model="title"
              >
          </div>
          <p class="new-content">主题正文</p>
          <div class="new-content-textarea">
            <textarea
              placeholder="主题正文"
              v-model="content"
              ></textarea>
          </div>
          <div class="new-post">
            <button type="submit">发布主题</button>
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
      title: '',
      content: ''
    }
  },
  components: {
    'cdw-right-bar': rightBar
  },
  methods: {
    onSubmit () {
      axios.post('/api/newpost', {
        username: this.$store.state.auth_username,
        title: this.title,
        content: this.content
      })
    }
  }
}
</script>

<style lang="stylus" scoped>
.cdw-new
  margin 0 auto
  display flex
  .new-main
    flex-grow 3
    .new-wrap
      margin 0
      padding 0
      width 98%
      background #fff
      overflow hidden
      .new-crumbs
        .crumbs
          font-size 1.4rem
          padding .6rem 1rem
          border-bottom 1px solid #fbfbfb
      .new-form
        .new-title, .new-content
          height 3rem
          padding 0 1rem
          line-height 3rem
        .new-title-input
          padding-left 1rem
          background #fbfbfb
          input
            padding 0
            width 100%
            height 3rem
            border none
            background transparent
        .new-content-textarea
          padding 1rem
          background #fbfbfb
          textarea
            padding 0
            width 100%
            height 30rem
            border none
            resize none
            background transparent
            font-family '微软雅黑'
        .new-post
          padding .7rem 1rem
          button
            width 6.2rem
            height 2.3rem
            border none
            background #76d067
            color #fff
</style>
