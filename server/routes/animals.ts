import express from 'express'
const animalsRouter = express.Router()
import { animalsController } from '../controller/animals'

animalsRouter.get('/animals', animalsController.animals)
animalsRouter.post('/exist', animalsController.exist)
animalsRouter.post('/getCnName', animalsController.getCnName)
animalsRouter.post('/getBilibili', animalsController.getBilibili)
animalsRouter.post('/getWiki', animalsController.getWiki)

export default animalsRouter
