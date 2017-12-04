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

router.post('/register', (req, res, next) => {
  let post = ''
  req.on('data', (chunk) => {
    post += chunk
  })
  req.on('end', () => {

    let data = JSON.parse(post)

    let saltPsw = bcrypt.genSaltSync(10);
    let hashPsw = bcrypt.hashSync(data.password, saltPsw)

    let time = new Date()

    connection.escape(data.username)

    let sql_query = "SELECT username,password FROM user_table WHERE username='" + data.username + "'"

    let sql_insert = 'INSERT INTO user_table (username, password, created_time) VALUES (?,?,?)'

    connection.query(sql_query, (err, results, fields) => {
      if(err) {
        console.log(err)
      }

      if(results.length > 0) {
        res.send({
          reg_status: -1,
          username: data.username
        })
      } else {
        res.send({
          reg_status: 1,
          username: data.username
        })
        connection.query(sql_insert, [data.username, hashPsw, time], (error, result, fields) => {
         if(error) throw error
        })
      }
    })

  })
})

export default router
