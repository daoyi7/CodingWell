import {Router} from 'express'
const mysql = require('mysql')

const router = Router()

const connection = mysql.createConnection({
  host: 'localhost',
  database: 'hupu',
  user: 'root',
  password: ''
})

router.get('/userinfo/:username', (req, res, next) => {
  let name = req.params.username

  connection.escape(name)

  if(name !== '') {

    let sql = "SELECT * FROM user_table WHERE username='" + name + "'"

    connection.query(sql, (err, results, fields) => {
      res.json(results[0])
    })
  } else {
    res.send(404)
  }
})

export default router
