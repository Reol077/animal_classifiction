<template>
  <div class="box">
    <div class="inner_box">
      <div class="top">
        <div class="text">
          <h1 @click="refreshPage">All Animals</h1>
          <span>
            这是一个动物科普网站，您可以上传一张图片，我们来告诉您这是什么动物
          </span>
        </div>
        <!-- <el-button class="uploadButton">上传图片</el-button> -->
        <el-button class="uploadButton" @click="showDialog">
          Upload
          <el-icon class="el-icon--right"><Upload /></el-icon>
        </el-button>
      </div>
      <div class="grid-container">
        <div
          class="grid-item"
          v-for="(animal, index) in engAnimalsList"
          :key="animal"
        >
          <div class="text">
            <h2>{{ animal }}</h2>
            <span>{{ cnAnimalsList[index] }}</span>
          </div>
          <div class="logo">
            <SvgIcon :name="animal" width="30" height="30"></SvgIcon>
          </div>
        </div>
      </div>
      <div class="foot"></div>
      <BackTop></BackTop>
      <el-dialog v-model="flag" :show-close="false">
        <template #header="{ close, titleId, titleClass }">
          <div class="my-header">
            <h4 :id="titleId" :class="titleClass">This is a custom header!</h4>
            <el-button type="danger" @click="close">
              <el-icon class="el-icon--left"><CircleCloseFilled /></el-icon>
              Close
            </el-button>
          </div>
        </template>
      </el-dialog>
    </div>
  </div>
</template>
<script setup lang="ts">
import { ref, onMounted } from 'vue'
import { reqAnimals } from '@/api/animals'
import { Upload, CircleCloseFilled } from '@element-plus/icons-vue'

const engAnimalsList = ref<string[]>([])
const cnAnimalsList = ref<string[]>([])
let flag = ref(false)

function refreshPage() {
  location.reload()
}

function showDialog() {
  flag.value = !flag.value
}

async function fetchData() {
  try {
    type Animal = {
      id: number
      english_name: string
      chinese_name: string
    }

    const Animals: { animals: Animal[] } = await reqAnimals()
    const animals: Animal[] = Animals.animals
    const english_name: string[] = animals.map((animal) => animal.english_name)
    const chinese_name: string[] = animals.map((animal) => animal.chinese_name)

    engAnimalsList.value = english_name
    cnAnimalsList.value = chinese_name
  } catch (error) {
    console.error('Error fetching data:', error)
  }
}
onMounted(() => {
  fetchData()
})
</script>
<style lang="scss" scoped>
.box {
  width: 100%;
  background-color: $background-color;
  height: 100%;
  display: flex;
  justify-content: center;

  .inner_box {
    padding-top: 30px;
    width: 70%;
    .top {
      display: flex;
      justify-content: space-between;
      align-items: center;
      .text {
        h1 {
          font-size: 38px;
          font-weight: 600;
          color: initial;
          transition: color 0.3s ease;
          cursor: pointer;
          font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Helvetica,
            Arial, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol',
            'Liberation Sans', 'PingFang SC', 'Microsoft YaHei',
            'Hiragino Sans GB', 'Wenquanyi Micro Hei', 'WenQuanYi Zen Hei',
            'ST Heiti', SimHei, SimSun, 'WenQuanYi Zen Hei Sharp', sans-serif;

          &:hover {
            color: $active-font-color;
          }
        }
        span {
          display: block;
          margin-top: 30px;
          color: $font-color;
        }
      }
      .uploadButton {
        background-color: $background-color;
        border: none;
        box-shadow: $box-shadow-value;
        height: 50px;
        color: gray;
        &:active {
          box-shadow: $box-shadow-inser-value;
          color: $active-font-color;
        }
      }
    }

    .grid-container {
      margin-top: 20px;
      display: grid;
      grid-template-columns: repeat(3, 1fr);
      grid-gap: 30px;
      .grid-item {
        // user-select: none;
        background-color: $background-color;
        border-radius: 5px;
        box-shadow: $box-shadow-value;
        color: #333;
        &:active {
          box-shadow: $box-shadow-inser-value;
          color: $active-font-color;
        }
        padding: 10px;
        cursor: pointer;
        display: flex;
        justify-content: space-between;
        align-items: center;
        .text {
          margin-left: 15px;
          h2 {
            font-size: 28px;
            font-weight: 600;
            margin-bottom: 15px;
            letter-spacing: 0.015em;
          }
          span {
            font-size: 14px;
            font-weight: 400;
            color: #666;
          }
        }
        .logo {
          margin-right: 25px;
        }
      }
    }
    .foot {
      height: 50px;
    }
    .my-header {
      display: flex;
      flex-direction: row;
      justify-content: space-between;
    }
  }
}
</style>
