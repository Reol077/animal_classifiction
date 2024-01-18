//对外暴露配置路由
export const constantRoute = [
  {
    path: '/',
    redirect: '/home',
  },
  {
    path: '/home',
    component: () => import('@/views/home/index.vue'),
    name: 'home',
    meta: {
      keepAlive: false, //设置页面是否需要使用缓存
    },
  },
  {
    path: '/show/:animal',
    component: () => import('@/views/home/show.vue'),
  },
  {
    path: '/404',
    component: () => import('@/views/404/index.vue'),
    name: '404',
  },
  {
    path: '/:pathMatch(.*)*',
    redirect: '/404',
    name: 'any',
  },
]
