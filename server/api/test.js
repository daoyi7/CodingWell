import {Router} from 'express'

const router = Router()

router.post('/test', function(req, res) {
  res.send(123)
  console.log( req)
})

export default router
