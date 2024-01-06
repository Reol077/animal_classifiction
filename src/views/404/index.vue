<template>
  <div class="box">
    <div class="inner_box">
      <!-- 左侧使用svg图标 -->
      <SvgIcon name="404" width="240px" height="240px"></SvgIcon>
      <!-- 右侧为文本内容 -->
      <div class="text">
        <h1>404</h1>
        <p>您点击了一个无法访问的链接</p>
        <p>
          请检查网址或转到
          <a href="#">主页</a>
          ，看看能否找到您要找的内容
        </p>
      </div>
    </div>
  </div>
</template>

<style lang="scss" scoped>
$font-color: #003b64;
.box {
  font-family: 'Josefin Sans', sans-serif;
  display: flex;
  justify-content: center;
  align-items: center;
  gap: 10px;
  height: 100vh;
  // 渐变背景色
  background: linear-gradient(to bottom, lightgray 50%, white 50%);

  .inner_box {
    width: 60%;
    display: flex;
    justify-content: center;
    align-items: center;
    background-color: white;
    box-shadow: 0px 0px 10px 5px rgba(0, 0, 0, 0.3);
    padding: 100px 20px;

    .text {
      width: 70%;

      h1 {
        font-size: 190px;
        text-align: center;
        margin-bottom: 20px;
        margin-top: 0px;
        color: $font-color;
      }

      p {
        font-weight: 600;
        font-size: 20px;
        text-align: center;
        color: $font-color;
        padding-top: 10px;

        a {
          color: #000;
          text-decoration: none;
        }

        a:hover {
          color: $font-color;
          text-decoration: underline;
        }
      }
    }
  }
}
</style>
