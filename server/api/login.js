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

router.post('/login', function(req, res, next) {
  var post = ''
  req.on('data', function(chunk) {
    post += chunk
  })
  req.on('end', function() {

    let data = JSON.parse(post)

    connection.escape(data.username)

    let sql = "SELECT username,password FROM user_table WHERE username='" + data.username + "'"

    connection.query(sql, (err, results, fields) => {
      if(err) {
        console.log(err)
      }

      if(results.length > 0) {
        bcrypt.compare(data.password, results[0].password, function(err, resb) {
          if(resb === true) {
            res.send({
              login_status: 1,
              username: data.username
            })
          } else {
            res.send({
              login_status: 0,
              username: data.username
            })
          }
        })
      } else {
        res.send({
          login_status: -1,
          username: data.username
        })
      }
    })

  })
})

export default router
