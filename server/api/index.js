import { Router } from 'express'

import content from './content'
import register from './register'
import login from './login'
import userinfo from './userinfo'

const router = Router()

router.use(content)
router.use(register)
router.use(login)
router.use(userinfo)

export default router
