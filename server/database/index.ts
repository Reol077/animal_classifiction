// 导入mysql模块
import mysql from 'mysql'

// 创建数据库连接对象
const db = mysql.createPool({
  host: '127.0.0.1',
  user: 'root',
  password: '1109reol',
  database: 'animal_database',
})

// 向外共享db数据库连接对象
export default db
