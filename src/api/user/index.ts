//统一管理项目用户相关的接口
import request from '@/utils/request'
import type { loginForm, loginResponseData } from './type'
//统一管理接口
enum API {
  LOGIN_URL = '/user/login',
}
//暴漏请求函数
//登录接口方法
export const reqLogin = (data: loginForm) =>
  request.post<any, loginResponseData>(API.LOGIN_URL, data)
