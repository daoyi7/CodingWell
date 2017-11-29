import { Router } from 'express'

import content from './content'

const router = Router()

router.use(content)

export default router
