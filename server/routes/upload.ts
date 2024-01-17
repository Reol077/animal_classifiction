import express from 'express'
import multer from 'multer'
import path from 'path'
import { uploadController } from '../controller/upload'

const uploadsRouter = express.Router()

const storage = multer.diskStorage({
  destination: function (req, file, cb) {
    cb(null, path.join(__dirname, '../public/images'))
  },
  filename: function (req, file, cb) {
    cb(null, 'upload.jpg')
  },
})

const upload = multer({ storage: storage })

uploadsRouter.post(
  '/upload',
  upload.single('file'),
  uploadController.uploadImage,
)

export default uploadsRouter
