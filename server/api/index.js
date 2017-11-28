import { Router } from 'express'

import posts from './posts'

const router = Router()

router.use(posts)

export default router
