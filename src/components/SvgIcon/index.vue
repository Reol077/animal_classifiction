<template>
  <!-- svg:图表外层的容器节点，内部需要与use标签使用 -->
  <svg :style="{ width, height }">
    <!-- xlink:href执行用哪一个图标，属性值必须用#icon-图标名字 -->
    <!-- use标签用fill属性可以设置图标的颜色 -->
    <use :xlink:href="prefix + name" :fill="color"></use>
  </svg>
</template>
<script setup lang="ts">
defineProps({
  //xlink:href属性值的前缀
  prefix: {
    type: String,
    default: '#icon-',
  },
  //提供使用的图标的名字
  name: String,
  //接受父组件传入的颜色
  color: {
    type: String,
    default: '',
  },
  //接受父组件传入的图表的宽度高度
  width: {
    type: String,
    default: '16px',
  },
  //接受父组件传入的图表的高度
  height: {
    type: String,
    default: '16px',
  },
})
</script>
