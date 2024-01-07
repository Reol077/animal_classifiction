<template>
  <el-backtop :right="50" :bottom="50" class="backtop">
    <SvgIcon name="top" width="23" height="23" color="#777"></SvgIcon>
  </el-backtop>
</template>
<style lang="scss" scoped>
.backtop {
  border-radius: 10px;
  background-color: $backtop-color;
  width: 50px;
  height: 50px;
  box-shadow:
    0.2rem 0.2rem 0.4rem #c8d0e7,
    -0.2rem -0.2rem 0.4rem #fff;
}
</style>
