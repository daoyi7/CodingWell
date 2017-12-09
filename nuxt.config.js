const resolve = require('path').resolve

module.exports = {
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
        content: 'CodingWell'
      }
    ],
    link: [{
      rel: 'icon',
      type: 'image/x-icon',
      href: '/cdw.ico'
    }]
  },
  css: [
    '~/assets/css/main.css'
  ],
  loading: {
    color: '#54b743'
  },
  build: {
    vendor: ['axios'],
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
    middleware: 'check-auth',
    extendRoutes (routes) {
      routes.push()
    }
  }
}
