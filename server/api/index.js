import { Router } from 'express'

import content from './content'
import register from './register'

const router = Router()

router.use(content)
router.use(register)

export default router
