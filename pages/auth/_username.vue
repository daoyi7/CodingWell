<template>
  <section class="cdw-user-info">
    this is user {{this.$route.params.username}} info page
    <form class="cdw-update-info" action="" method="post">
      <div class="cdw-user-info-username">
        <label>用户名</label>
        <input type="text" name="" value="">
      </div>
    </form>
  </section>
</template>

<script>
export default {
  mounted () {
    console.log(this.$route.params.username)
  }
}
</script>

<style lang="stylus" scoped>
</style>
