import { Router } from 'express'

import content from './content'
import test from './test'

const router = Router()

router.use(content)
router.use(test)

export default router
