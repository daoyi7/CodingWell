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

    console.log(typeof data.username);

    // let saltPsw = bcrypt.genSaltSync(data.password);
    // let hashPsw = bcrypt.hashSync("B4c0/\/", saltPsw)
    //
    // console.log(data.password)
    // console.log(saltPsw)
    // console.log(hashPsw)

    connection.connect()

    let sql = 'INSERT INTO user_table (username, password) VALUES (?,?)';

    connection.query(sql, [data.username, data.password], (error, result, fields) => {
     if(error) throw error
    })

    connection.end()
  })
})

export default router
