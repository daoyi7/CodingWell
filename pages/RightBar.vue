<template>
  <section class="main-bar">
    <div class="box">
      <div class="avatar">
        <img src="~assets/img/codingwell.png">
      </div>
      <div class="username">
        <span>CodingWell</span>
      </div>
    </div>
  </section>
</template>

<script>
export default {
}
</script>

<style lang="stylus" scoped>
.main-bar
  flex 1
  width 100%
  height 20rem
  background #fff
  border-radius .4rem
  .box
    display flex
    padding 1rem 2rem 0
    .avatar
      flex 0 0 3.5rem
      width 3.5rem
      height 3.5rem
      overflow hidden
      border-radius .3rem
      img
        width 100%
        height 100%
    .username
      flex 1
      padding 1.5rem 1.5rem 0
      span
        font-size 1.8rem
        font-weight 500
</style>
