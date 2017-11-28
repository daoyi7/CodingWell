<template>
<div class="main">
  <div class="main_content">
    <div class="posts_wrap">
      <ul class="posts">
        <li v-for="(post, idx) in posts" :key="idx" class="post">
          <section class="post_item">
            {{post.id}}
            <div class="post_user">
              <a href="#">
                <img :src="post.member.avatar_mini" :alt="post.member.username">
              </a>
            </div>
            <div class="post_main">
              <h2>A站真的药丸？为什么一个网站可以一炸就三天过去了。。</h2>
              <div class="post_info">
                <span class="post_username">CodingWell</span>
              </div>
            </div>
          </section>
        </li>
      </ul>
    </div>
  </div>
</div>
</template>

<script>
export default {
}
</script>

<style lang="stylus" scoped>
.main
  width 100%
  .main_content
    width 60%
    margin 0 auto
    .posts_wrap
      width 100%
      .posts
        margin 0
        padding 0
        list-style none
        .post
          .post_item
            display flex
            justify-content space-between
            .post_user
              flex 0 0 6rem
              width 6rem
              height 6rem
              overflow hidden
              border-radius .3rem
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
            .post_main
              flex 1
              vertical-align middle
              h2
                padding 0
                margin 0
                line-height 4rem
</style>
