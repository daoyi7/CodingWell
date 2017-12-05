import {Router} from 'express'
const fs = require('fs')
const crypto = require('crypto')
const path = require('path')
const multer = require('multer')

const storage = multer.diskStorage({
  destination: './static/uploads/',
  filename: function (req, file, cb) {
    crypto.pseudoRandomBytes(16, function (err, raw) {
      if (err) return cb(err)

      if (file.mimetype == "image/png" || file.mimetype == "image/jpeg") {
        cb(null, new Date().getTime() + path.extname(file.originalname))
      } else {
        return false
      }
    })
  }
})

const upload = multer({ storage: storage })

const router = Router()

router.post('/useravatar', upload.single('image'), (req, res, next) => {
  res.json({
    originalname: req.file.originalname,
    filename: req.file.filename
  })
})

export default router
