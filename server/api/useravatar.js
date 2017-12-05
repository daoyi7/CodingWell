import {Router} from 'express'
const fs = require('fs')
const crypto = require('crypto')
const path = require('path')
const multer = require('multer')

const storage = multer.diskStorage({
  destination: './uploads/',
  filename: function (req, file, cb) {
    crypto.pseudoRandomBytes(16, function (err, raw) {
      if (err) return cb(err)

      cb(null, new Date().getTime() + path.extname(file.originalname))
    })
  }
})

const upload = multer({ storage: storage })

const router = Router()

router.post('/useravatar', upload.single('image'), (req, res, next) => {
  console.log(req.file)
  res.send({
    originalname: req.file.originalname,
    filename: req.file.filename
  })
})

export default router
