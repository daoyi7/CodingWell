import {Router} from 'express'
const router = Router()
const http = require('http')
const mysql = require('mysql')

const connection = mysql.createConnection({
  host: 'localhost',
  database: 'hupu',
  user: 'root',
  password: ''
})

router.post('/newpost', (req, res, next) => {
  let post = ''

  req.on('data', (chunk) => {
    post += chunk
  })

  req.on('end', () => {
    let data = JSON.parse(post)

    console.log(data)
  })
})

export default router
