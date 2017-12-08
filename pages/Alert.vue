<template>
  <div class="cdw-alert">
    <div class="cdw-alert-content">
      {{content}}
    </div>
  </div>
</template>

<script>
export default {
  props: {
    content: {
      type: String,
      default: ''
    }
  }
}
</script>

<style lang="stylus" scoped>
.cdw-alert
  position fixed
  top 1.5rem
  right 0
  z-index 9999
  .cdw-alert-content
    padding 1.6rem
    border-radius .6rem
    color #fff
    border 1px solid rgba(239, 186, 174, 0.9)
    background rgba(232, 111, 108, 0.38)
</style>
