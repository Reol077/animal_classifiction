import { createApp } from 'vue'
import App from './App.vue'

// 引入element-plus
import ElementPlus from 'element-plus'
import 'element-plus/dist/index.css'

// @ts-expect-error忽略当前文件ts类型的检测否则有红色提示(打包会失败)
import zhCn from 'element-plus/dist/locale/zh-cn.mjs'

// 导入SVG
import 'virtual:svg-icons-register'
// 导入自定义插件：注册整个项目的全局组件
import globalComponent from '@/components'

// 引入模板的全局样式
import '@/styles/index.scss'

// 引入路由
import router from './router'

// 引入仓库
import pinia from './store'

const app = createApp(App)

app.use(ElementPlus, {
  locale: zhCn,
})
// 安装自定义插件
app.use(globalComponent)

// 安装路由
app.use(router)

// 安装仓库
app.use(pinia)

app.mount('#app')
