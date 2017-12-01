import { Router } from 'express'

import content from './content'
import register from './register'
import login from './login'

const router = Router()

router.use(content)
router.use(register)
router.use(login)

export default router
