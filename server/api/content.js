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

connection.query('select * from voice_nba', (err, results, fields) => {
  if (err) {
    console.log(err)
  }
  if (results) {
    router.get('/content', (req, res) => {
      res.json(results)
    })

    router.get('/content/:id', (req, res, next) => {
      const id = parseInt(req.params.id)
      if (id >= 1 && id < results.length) {
        res.json(results[id-1])
      } else {
        res.sendStatus(404)
      }
    })
  }
})

export default router
