import { Router } from 'express'

import content from './content'
import register from './register'
import login from './login'
import userinfo from './userinfo'
import settings from './settings'

const router = Router()

router.use(content)
router.use(register)
router.use(login)
router.use(userinfo)
router.use(settings)

export default router
