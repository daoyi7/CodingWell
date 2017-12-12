import {Router} from 'express'
const router = Router()
const http = require('')
const mysql = require('mysql')
const bcrypt = require('bcryptjs')

const connection = mysql.createConnection({
  host: 'localhost',
  database: 'hupu',
  user: 'root',
  password: ''
})

router.post('/forget', (req, res, next) => {
  let post = ''
  req.on('data', (chunk) => {
    post += chunk
  })
  req.on('end', () => {

    let data = JSON.parse(post)

    console.log(data.username)

    let saltPsw = bcrypt.genSaltSync(10);
    let hashPsw = bcrypt.hashSync(data.new_password, saltPsw)

    let time = new Date()

    connection.escape(data.username)

    let sql_query_username = "SELECT username,password FROM user_table WHERE username='" + data.username + "'"

    let sql_query_old_psw = "SELECT username,password FROM user_table WHERE username='" + data.username + "'"

    let sql_insert = 'UPDATE user_table SET password = ? WHERE username = ?'
    let sql_psw_data = [hashPsw, data.username]

    connection.query(sql_query_username, (err, results, fields) => {
      if(err) {
        console.log(err)
      }

      if(results.length > 0) {
        console.log("存在")
        console.log(results)

        bcrypt.compare(data.old_password, results[0].password, (err, resb) => {
          if(resb === true) {
            // 密码正确
            connection.query(sql_insert, sql_psw_data, (error, result, fields) => {
              if(error) throw error
              res.send({
                forget_status: 1,
                username: results[0].username
              })
            })
          } else {
            // 密码错误
            res.send({
              forget_status: 0,
              username: results[0].username
            })
          }
        })
      } else {
        // 用户名不存在
        res.send({
          forget_status: -1,
          username: data.username
        })
      }
    })

  })
})

export default router
