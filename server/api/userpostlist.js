import {
  Router
} from 'express'
const mysql = require('mysql')

const router = Router()

const connection = mysql.createConnection({
  host: 'localhost',
  database: 'hupu',
  user: 'root',
  password: ''
})

router.post('/userpostlist', (req, res, next) => {
  let post = ''
  req.on('data', (chunk) => {
    post += chunk
  })

  req.on('end', () => {
    let data = JSON.parse(post)

    connection.escape(data)

    let sql = "SELECT * FROM user_table WHERE BINARY username='" + data.username + "'"

    connection.query(sql, (err, result, field) => {
      if(err) {
        console.log(err)
      }

      let id = result[0].id

      let sql_content = "SELECT * FROM post_table WHERE BINARY user_id='" + id + "'"

      connection.query(sql_content, (err, results, fields) => {
        if(err) {
          console.log(err)
        }

        res.json(results)
      })
    })
  })
})

export default router
