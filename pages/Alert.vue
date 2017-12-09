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
  right 1.5rem
  z-index 9999
  .cdw-alert-content
    padding 1.6rem
    letter-spacing .1rem
    border-radius .3rem
    color rgba(229,57,53,0.8)
    background rgba(255, 255, 255, 0.95)
    box-shadow .1rem .1rem .6rem rgba(0, 0, 0, 0.2)
</style>
