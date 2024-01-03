import { App, Component } from 'vue'
import SvgIcon from './SvgIcon/index.vue'

// 全局组件对象的类型定义
type GlobalComponents = Record<string, Component>

// 项目的全部全局组件
const allGlobalComponent: GlobalComponents = { SvgIcon }

// 对外暴露插件对象
export default {
  install(app: App): void {
    // 注册项目的全部全局组件
    Object.keys(allGlobalComponent).forEach((key: string) => {
      app.component(key, allGlobalComponent[key])
    })
  },
}
