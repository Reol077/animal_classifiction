import { Request, Response } from 'express'
import { exec } from 'child_process'

class UploadController {
  uploadImage = async (req: Request, res: Response) => {
    const pythonScriptPath = 'server/model/identify.py'
    const command = `python ${pythonScriptPath}`

    exec(command, { encoding: 'utf-8' }, (error, stdout) => {
      if (error) {
        console.error(`执行Python脚本时出错: ${error}`)
        return res.status(500).json({ error: 'Internal Server Error' })
      }

      try {
        // 解析Python脚本的标准输出
        const outputLines = stdout.trim().split('\n')
        const result = outputLines.map((line) => JSON.parse(line.trim()))

        console.log('Python脚本执行结果:', result)

        // 返回结果给调用方
        res.json({ labels: result[0] })
      } catch (parseError) {
        console.error(`解析Python脚本输出时出错: ${parseError}`)
        res.status(500).json({ error: 'Internal Server Error' })
      }
    })
  }
}
export const uploadController = new UploadController()
