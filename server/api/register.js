import {
  Router
} from 'express'

const router = Router()
const http = require('http');
const querystring = require('querystring');
router.post('/test', function(req, res, next) {
  var post = ''
  req.on('data', function(chunk) {
    post += chunk
  })
  req.on('end', function() {
    console.log(post)
  })
})

export default router
