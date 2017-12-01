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

router.post('/register', function(req, res, next) {
  var post = ''
  req.on('data', function(chunk) {
    post += chunk
  })
  req.on('end', function() {

    let data = JSON.parse(post)

    let saltPsw = bcrypt.genSaltSync(10);
    let hashPsw = bcrypt.hashSync(data.password, saltPsw)

    console.log(data.password)
    console.log(saltPsw)
    console.log(hashPsw)

    connection.connect()

    let sql = 'INSERT INTO user_table (username, password) VALUES (?,?)'

    connection.query(sql, [data.username, hashPsw], (error, result, fields) => {
     if(error) throw error
    })

  })
})

export default router
