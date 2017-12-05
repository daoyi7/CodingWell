import {Router} from 'express'
const router = Router()
const http = require('http')
const querystring = require('querystring')
const mysql = require('mysql')
const bcrypt = require('bcryptjs')

const connection = mysql.createConnection({
  host: 'localhost',
  database: 'hupu',
  user: 'root',
  password: ''
})

router.post('/settings', (req, res, next) => {
  let post = ''
  req.on('data', (chunk) => {
    post += chunk
  })
  req.on('end', () => {

    let data = JSON.parse(post)

    connection.escape(data)

    let sql = 'UPDATE user_table SET email = ?, telnumber = ?, website = ?, userinfo = ?, avatar = ? WHERE username = ?'
    let sql_data = [data.email, data.telnumber, data.website, data.userinfo, data.avatar, data.username]

    connection.query(sql, sql_data, (error, result, fields) => {
      if(error) throw error
    })
  })
})

export default router
