import express from 'express'
const animalsRouter = express.Router()
import { animalsController } from '../controller/animals'

animalsRouter.get('/animals', animalsController.animals)
animalsRouter.post('/exist', animalsController.exist)

export default animalsRouter
