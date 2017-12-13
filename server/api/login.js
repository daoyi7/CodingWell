import {Router} from 'express'
const router = Router()
const mysql = require('mysql')
const bcrypt = require('bcryptjs')

const connection = mysql.createConnection({
  host: 'localhost',
  database: 'hupu',
  user: 'root',
  password: ''
})

router.post('/login', (req, res, next) => {
  let post = ''
  req.on('data', (chunk) => {
    post += chunk
  })
  req.on('end', () => {

    let data = JSON.parse(post)

    connection.escape(data.username)

    let sql = "SELECT username,password FROM user_table WHERE BINARY username='" + data.username + "'"

    connection.query(sql, (err, results, fields) => {
      if(err) {
        console.log(err)
      }

      if(results.length > 0) {
        bcrypt.compare(data.password, results[0].password, (err, resb) => {
          if(resb === true) {
            res.send({
              login_status: 1,
              username: results[0].username
            })
          } else {
            res.send({
              login_status: 0,
              username: results[0].username
            })
          }
        })
      } else {
        res.send({
          login_status: -1
        })
      }
    })

  })
})

export default router
