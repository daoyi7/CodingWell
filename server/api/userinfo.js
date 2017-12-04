import {Router} from 'express'
const mysql = require('mysql')

const router = Router()

const connection = mysql.createConnection({
  host: 'localhost',
  database: 'hupu',
  user: 'root',
  password: ''
})

connection.query('select * from user_table', (err, results, fields) => {
  if(err) {
    console.log(err)
  }
  if(results) {
    router.get('/userinfo', function(req, res) {
      res.json(results)
    })

    router.get('/userinfo/:username', function(req, res, next) {
      let usernameArray = []

      for(let i=0;i<results.length;i++) {
        usernameArray.push(results[i].username)
      }

      let reqUsernameIndex = usernameArray.indexOf(req.params.username)

      res.json(results[reqUsernameIndex])
    })
  }
})

export default router
