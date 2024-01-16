import { Request, Response } from 'express'
import db from '../database/index'

class AnimalsController {
  animals = async (req: Request, res: Response) => {
    const sql = 'select id, english_name, chinese_name from animals'
    db.query(sql, (err, results) => {
      if (err) {
        res.send(err)
      } else {
        res.send({ status: 0, animals: results })
      }
    })
  }
}

// 创建一个上述类的一个实例，将其导出
export const animalsController = new AnimalsController()
