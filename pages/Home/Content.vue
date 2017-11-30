<template>
<div class="cdw-content">
  <div class="main_content">
    <section class="contents-wrap">
      <ul class="contents">
        <li v-for="(bbs, idx) in bbses" :key="idx" class="content">
          <section class="content-item">
            <div class="content-user">
              <a href="#">
                <img :src="bbs.member.avatar_normal" :alt="bbs.member.username">
              </a>
            </div>
            <div class="content-main">
              <h2>{{bbs.title}}</h2>
              <div class="content-info">
                <span class="content-username">{{bbs.member.username}}</span>
              </div>
            </div>
          </section>
        </li>
      </ul>
    </section>
    <section class="main-bar">
      <div class="box">
        <div class="avatar">
          <img src="~assets/img/avartar.jpg">
        </div>
        <div class="username">
          <span>CodingWell</span>
        </div>
      </div>
    </section>
  </div>
</div>
</template>

<script>
export default {
  props: {
    bbses: {
      type: Array,
      default: []
    }
  }
}
</script>

<style lang="stylus" scoped>
.cdw-content
  width 100%
  .main_content
    width 100rem
    margin 0 auto
    display flex
    .contents-wrap
      flex 0 0 80rem
      width 80rem
      .contents
        margin 0
        padding 0 5rem 0 0
        list-style none
        .content
          .content-item
            display flex
            justify-content space-between
            border-bottom 1px solid #fbfbfb
            .content-user
              flex 0 0 6rem
              width 6rem
              height 6rem
              overflow hidden
              vertical-align middle
              display flex
              justify-content center
              align-items center
              a
                width 4rem
                height 4rem
                display block
                img
                  width 100%
                  border-radius .3rem
            .content-main
              flex 1
              vertical-align middle
              h2
                padding 0
                margin 0
                line-height 4rem
    .main-bar
      flex 1
      width 100%
      height 20rem
      .box
        display flex
        padding 0 2rem
        .avatar
          flex 0 0 5rem
          width 5rem
          height 5rem
          overflow hidden
          border-radius .3rem
          img
            width 100%
            height 100%
        .username
          flex 1
          padding 2.5rem 1.5rem 0
          span
            font-size 1.8rem
            font-weight 500
</style>
