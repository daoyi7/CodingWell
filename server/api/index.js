import { Router } from 'express'

import content from './content'
import register from './register'
import login from './login'
import forget from './forget'
import userinfo from './userinfo'
import settings from './settings'
import useravatar from './useravatar'
import newpost from './newpost'

const router = Router()

router.use(content)
router.use(register)
router.use(login)
router.use(forget)
router.use(userinfo)
router.use(settings)
router.use(useravatar)
router.use(newpost)

export default router
