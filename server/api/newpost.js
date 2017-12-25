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

    let time = new Date()
    let desc = data.content.slice(0,30)

    connection.escape(data.username)

    let sql_query = "SELECT * FROM user_table WHERE username='" + data.username + "'"

    let sql_insert = 'INSERT INTO post_table (user_id, title, description, content, created_time, last_modified, like_count, view_count, is_top, is_show) VALUES (?,?,?,?,?,?,?,?,?,?)'

    connection.query(sql_query, (err, results, fields) => {
      let user_id = results[0].id

      connection.query(sql_insert, [
        user_id,
        data.title,
        desc,
        data.content,
        time,
        time,
        0,
        0,
        0,
        1
      ], (err, result, field) => {
        if (err) throw err
        res.json({
          post_status: 1
        })
      })
    })

  })
})

export default router
