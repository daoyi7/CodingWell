import {Router} from 'express'
const fs = require('fs')

const router = Router()

router.post('/useravatar', (req, res, next) => {
  let post = ''
  let time = new Date().getTime()
  let img_data = './public/upload/img/' + time + '.jpg'

  req.on('data', (chunk) => {
    post += chunk
  })
  req.on('end', () => {

    let data = JSON.parse(post)

    console.log(data)
    console.log(form)
    // req.setEncoding("binary")
    //
    // fs.writeFile(img_data, data, "binary", (err) => {
    //   if (err) throw err
    //
    //   console.log(123)
    // })
  })
})

export default router
