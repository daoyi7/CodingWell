import { Router } from 'express'

import content from './content'
import register from './register'
import login from './login'
import userinfo from './userinfo'
import settings from './settings'
import useravatar from './useravatar'

const router = Router()

router.use(content)
router.use(register)
router.use(login)
router.use(userinfo)
router.use(settings)
router.use(useravatar)

export default router
