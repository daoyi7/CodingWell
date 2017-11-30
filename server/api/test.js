const express = require('express')
const mysql = require('mysql')

const app = express()

const connection = mysql.createConnection({
  host: 'localhost',
  database: 'node-mysql',
  user: 'root',
  password: ''
})

connection.connect()

let data = {
 name: 'kawhi123',
 email: 'kawhichina@gmai.com'
}

connection.query('INSERT INTO api SET ?', data, (error, results, fields) => {
 if(error) throw error
})

connection.end()
