<template>
<section class="cdw-header">
  <header class="cdw-header-content cdw-wrap">
    <nuxt-link to="/">
      <img src="~assets/img/codingwell.png" alt="CodingWell" class="logo" />
      <svg version="1.1" id="Layer_1" x="0px" y="0px" width="174px" height="24px" viewBox="0 0 348 48" enable-background="new 0 0 348 48" xml:space="preserve">  <image id="image0" width="348" height="48" x="0" y="0"
              xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAVwAAAAwCAQAAAD3XgoyAAAABGdBTUEAALGPC/xhBQAAACBjSFJN
          AAB6JQAAgIMAAPn/AACA6QAAdTAAAOpgAAA6mAAAF2+SX8VGAAAAAmJLR0QA/4ePzL8AAAAJcEhZ
          cwAADsQAAA7EAZUrDhsAAAAHdElNRQfhCx0LISPmwlekAAAB2ElEQVR42u3c3W6EIBCGYWi4/1um
          B5tN1qBkdEacL77PUastC+5k+BGtvQx2Dv2oJZff2marW4b2rr8+Y/xc+9xpOX9LmgIEI3AhqW1+
          64b/+PzNGzplJEbGhSQCF5K+QwXLTLAPPysOGN62CrHe56pahp2Ocsi4kETgQlLbOXbUgUZ1AYAb
          GReSCFxIaqdn2eozcfX6o5RCxoUoAheSmr+IHZaVh7Nb8q6VMC/NXoJ9LcXfLn9Lz4r6vhYi40IS
          gQtJ0UMFeyc43+1g32CZjb9d62vrb9dyZFxIInAhKW6oYJ+zz7dHnt1gaRe73e6Odnna6HmI0l6f
          NAMGMi4kEbiQdM8NiGo461n0nnfBT/G361l5rqQBGReSCFxIumeogLnYmxT94MgdA5I0gxwyLiQR
          uJDUNnNhSxfDewmuGdcc/LP4o++iD2ctdZNCxoUkAheS9lYVjgYMK7csWspRZLlJcXZPRXWXIHid
          ybiQROBCUt30J/55aNRjgJ6Ni9dKi1pLiVp1ma8YXGu1f4Oofytm0MOkZFxIInAhabuqYJ/zzs/6
          u4w3vxky6sZB7ApGsjUHMi4kEbiQVN/ZGz8m28uXZJFxIYnAhSSegMiKQcIUGReSCFxI+gdyP1tu
          TTRlqAAAACV0RVh0ZGF0ZTpjcmVhdGUAMjAxNy0xMS0yOVQxMTozMzozNSswODowMI8todIAAAAl
          dEVYdGRhdGU6bW9kaWZ5ADIwMTctMTEtMjlUMTE6MzM6MzUrMDg6MDD+cBluAAAAAElFTkSuQmCC" />
          </svg>
    </nuxt-link>
    <div class="cdw-dashboard">
      <div class="user-data" v-if = "this.$store.state.auth_state">
        <span class="logout" @click="logout">{{ this.$store.state.auth_username }}</span>
      </div>
      <div class="unlogin" v-if = "!this.$store.state.auth_state">
        <nuxt-link class="login" to="/auth/login">
          <span>登录</span>
        </nuxt-link>
        <nuxt-link class="register" to="/auth/register">
          <span>注册</span>
        </nuxt-link>
      </div>
    </div>
  </header>
</section>
</template>

<script>
export default {
  props: {
    username: {
      type: String,
      default: ''
    }
  },
  methods: {
    logout () {
      window.localStorage.removeItem('auth_username')
      window.localStorage.removeItem('auth_state')
      this.$store.commit('toggleAuthState')
      this.$store.commit('addAuthUsername')

      this.$router.push('/auth/login')
    }
  }
}
</script>

<style lang="stylus" scoped>
.cdw-header
  width 100%
  height 6rem
  overflow hidden
  background #ded5c4
  box-shadow 0px 0.1rem 0.1rem #051c2d47
  .cdw-header-content
    margin 0 auto
    height 6rem
    display flex
    align-items center
    justify-content space-between
    a
      img
        height: 3rem
        margin-right 1rem
        vertical-align middle
      svg
        vertical-align middle
    .cdw-dashboard
      .logout
        padding .3rem .6rem
        font-size 1.5rem
        color #fff
      .login,.register
        color #fff
        font-size 1.4rem
        text-decoration none
        padding .3rem .6rem
        background #76d067
        margin-right .8rem
</style>
