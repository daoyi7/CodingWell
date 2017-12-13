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

connection.query('select * from user_table', (err, results, fields) => {
  if (err) {
    console.log(err)
  }
  if (results) {
    router.get('/user', (req, res) => {
      res.json(results)
    })

    router.get('/user/:id', (req, res, next) => {
      let id = req.params.id

      connection.escape(id)

      if(id !== '') {

        let sql = "SELECT * FROM user_table WHERE id='" + id + "'"

        connection.query(sql, (err, results, fields) => {
          res.json(results[0])
        })
      } else {
        res.send(404)
      }
    })
  }
})

export default router
