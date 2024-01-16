import express from 'express'
const animalsRouter = express.Router()
import { animalsController } from '../controller/animals'

animalsRouter.get('/animals', animalsController.animals)

export default animalsRouter
