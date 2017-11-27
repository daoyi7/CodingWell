<template>
  <section class="container">
    <section class="header">
      <header class="header_content">
        <nuxt-link to="/">
          <img src="~assets/img/codingwell.png" alt="CodingWell" class="logo" />
        </nuxt-link>
        <div class="dashboard">
          <nuxt-link to="/">
            <span>登录</span>
          </nuxt-link>
          <nuxt-link to="/">
            <span>注册</span>
          </nuxt-link>
        </div>
      </header>
    </section>
    <div class="main">
      <div class="main_content">
        <div class="posts_wrap">
          <ul class="posts">
            <li class="post">
              <section class="post_item">
                <div class="post_user">
                  <a href="#">
                    <img src="~assets/img/codingwell.png" alt="cdw">
                  </a>
                </div>
                <div class="post_main">
                  <h2>A站真的药丸？为什么一个网站可以一炸就三天过去了。。</h2>
                  <div class="post_info">
                    <span class="post_node">全球工单系统</span>
                    <span class="post_username">CodingWell</span>
                  </div>
                </div>
              </section>
            </li>
          </ul>
        </div>
      </div>
    </div>
    <!-- <h1 class="title">
      USERS
    </h1>
    <ul class="users">
      <li v-for="(user, index) in users" :key="index" class="user">
        <nuxt-link :to="{ name: 'id', params: { id: index }}">
          {{ user.name }}
        </nuxt-link>
      </li>
    </ul> -->
  </section>
</template>

<script>
import axios from '~/plugins/axios'

export default {
  async asyncData () {
    let { data } = await axios.get('/api/users')
    return { users: data }
  },
  head () {
    return {
      title: 'CodingWell'
    }
  }
}
</script>

<style lang="stylus" scoped>
.header
  width 100%
  height 6rem
  overflow hidden
  background #ded5c4
  .header_content
    width 60%
    height 6rem
    display flex
    align-items center
    justify-content space-between
    margin 0 auto
    a
      img
        height: 4.5rem
    .dashboard
      a
        color #fff
        font-size 1.4rem
        text-decoration none
        padding .3rem .6rem
        background #76d067
        margin-right .8rem
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
              flex 0 0 4rem
              width 4rem
              height 4rem
              overflow hidden
              border-radius .3rem
              a
                width 100%
                height 100%
                img
                  width 100%

</style>
