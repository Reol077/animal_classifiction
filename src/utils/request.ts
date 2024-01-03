// 进行axios的二次封装：使用请求与响应拦截器
import axios from 'axios'
import { ElMessage } from 'element-plus'

//第一步：利用axios对象的create方法，去创建axios实例（其他的配置：基础路径、超时的时间）
const request = axios.create({
  //基础路径
  baseURL: '/api', //基础路径上会带/api
  timeout: 5000, //超时的时间的设置
})

//第二不：request实例添加请求与响应拦截器
request.interceptors.request.use((config) => {
  //config配置对象，headers属性请求头，经常给服务器端携带公共参数
  config.headers.token = '123'
  //返回配置对象
  return config
})

//第三步：响应拦截器
request.interceptors.response.use(
  (response) => {
    //成功回调
    //简化数据
    return response.data
  },
  (error) => {
    //失败回调，处理http网络错误
    //定义一个变量存储网络错误的信息
    let message = ''
    const status = error.response.status
    switch (status) {
      case 401:
        message = 'TOKEN过期'
        break
      case 403:
        message = '无权访问'
        break
      case 404:
        message = '请求地址错误'
        break
      case 500:
        message = '服务器故障'
        break
      default:
        message = '网络出现问题'
    }
    //提示错误信息
    ElMessage({
      type: 'error',
      message,
    })
    return Promise.reject(error)
  },
)

//对外暴露插件对象
export default request
