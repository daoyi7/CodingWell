const resolve = require('path').resolve

module.exports = {
  /*
   ** Headers of the page
   */
  head: {
    title: 'CodingWell',
    meta: [{
        charset: 'utf-8'
      },
      {
        name: 'viewport',
        content: 'width=device-width, initial-scale=1'
      },
      {
        hid: 'description',
        name: 'description',
        content: 'Nuxt.js project'
      }
    ],
    link: [{
      rel: 'icon',
      type: 'image/x-icon',
      href: '/cdw.ico'
    }]
  },
  /*
   ** Global CSS
   */
  css: [
    '~/assets/css/main.css',
    '~/assets/css/iconfont.css'
  ],
  /*
   ** Add axios globally
   */
  loading: {
    color: '#54b743'
  },
  build: {
    vendor: ['axios'],
    /*
     ** Run ESLINT on save
     */
    extend (config, ctx) {
      if (ctx.isClient) {
        config.module.rules.push({
          enforce: 'pre',
          test: /\.(js|vue)$/,
          loader: 'eslint-loader',
          exclude: /(node_modules)/
        })
      }
    }
  },
  router: {
    extendRoutes (routes) {
      routes.push(
        {
          name: 'register',
          path: '/register',
          component: resolve(__dirname, 'pages/auth/register')
        },
        {
          name: 'login',
          path: '/login',
          component: resolve(__dirname, 'pages/auth/login')
        }
      )
    }
  }
}
