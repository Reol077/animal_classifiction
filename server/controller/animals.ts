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

  exist = async (req: Request, res: Response) => {
    const animal = req.body.animal
    const sql =
      'select count(*) as flag , english_name as eng , chinese_name as cn from animals where english_name = ?'
    db.query(sql, [animal], (err, results) => {
      if (err) {
        res.send(err)
      } else {
        res.send({ status: 0, results })
      }
    })
  }

  getCnName = async (req: Request, res: Response) => {
    const engName = req.body.engName
    const sql = `select english_name as eng , chinese_name as cn from animals where english_name in (?)`
    db.query(sql, [engName], (err, results) => {
      if (err) {
        res.send(err)
      } else {
        res.send({ status: 0, results })
      }
    })
  }

  getBilibili = async (req: Request, res: Response) => {
    const name = req.body.name
    console.log(name)
    const sql = `select bilibili from animals where english_name = ?`
    db.query(sql, [name], (err, results) => {
      if (err) {
        res.send(err)
      } else {
        res.send({ status: 0, results })
      }
    })
  }
}

// 创建一个上述类的一个实例，将其导出
export const animalsController = new AnimalsController()
