<template>
<div class="cdw-content">
  <div class="main-content cdw-wrap">
    <section class="contents-wrap">
      <ul class="contents">
        <li v-for="(bbs, idx) in bbses" :key="idx" class="content">
          <section class="content-item">
            <div class="content-user">
              <a href="#">
                <img :src="bbs.thumb" :alt="bbs.title">
              </a>
            </div>
            <div class="content-main">
              <h2>{{bbs.title}}</h2>
              <div class="content-info">
                <span class="content-username">{{bbs.source}}</span>
              </div>
            </div>
          </section>
        </li>
      </ul>
    </section>
    <cdw-right-bar></cdw-right-bar>
  </div>
</div>
</template>

<script>
import RightBar from '~/pages/RightBar'

export default {
  props: {
    bbses: {
      type: Array,
      default: []
    }
  },
  components: {
    'cdw-right-bar': RightBar
  }
}
</script>

<style lang="stylus" scoped>
.cdw-content
  width 100%
  .main-content
    margin 0 auto
    display flex
    .contents-wrap
      flex-grow 3
      .contents
        margin 0
        padding 0
        width 98%
        list-style none
        background #fff
        overflow hidden
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
                overflow hidden
                border-radius .3rem
                img
                  width 100%
                  transform scale(5)
            .content-main
              flex-grow 1
              vertical-align middle
              h2
                padding 0
                margin 0
                line-height 3.2rem
                padding-bottom .5em

</style>
