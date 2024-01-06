<template>
  <div class="box">
    <div class="inner_box">
      <div class="top">
        <div class="text">
          <h1 @click="refreshPage">All Animals</h1>
          <span>这是一个上传动物图片并识别的网站</span>
        </div>
        <el-button>上传图片</el-button>
      </div>
      <div class="grid-container">
        <div class="grid-item" v-for="(animal, index) in animals" :key="animal">
          <h2>{{ animal }}</h2>
          <span>{{ animalsChinese[index] }}</span>
        </div>
      </div>
    </div>
  </div>
</template>
<script setup lang="ts">
const animals = [
  'antelope',
  'badger',
  'bat',
  'bear',
  'bee',
  'beetle',
  'bison',
  'boar',
  'butterfly',
  'cat',
  'caterpillar',
  'chimpanzee',
  'cockroach',
  'cow',
  'coyote',
  'crab',
  'crow',
  'deer',
  'dog',
  'dolphin',
  'donkey',
  'dragonfly',
  'duck',
  'eagle',
  'elephant',
  'flamingo',
  'fly',
  'fox',
  'goat',
  'goldfish',
  'goose',
  'gorilla',
  'grasshopper',
  'hamster',
  'hare',
  'hedgehog',
  'hippopotamus',
  'hornbill',
  'horse',
  'hummingbird',
  'hyena',
  'jellyfish',
  'kangaroo',
  'koala',
  'ladybugs',
  'leopard',
  'lion',
  'lizard',
  'lobster',
  'mosquito',
  'moth',
  'mouse',
  'octopus',
  'okapi',
  'orangutan',
  'otter',
  'owl',
  'ox',
  'oyster',
  'panda',
  'parrot',
  'pelecaniformes',
  'penguin',
  'pig',
  'pigeon',
  'porcupine',
  'possum',
  'raccoon',
  'rat',
  'reindeer',
  'rhinoceros',
  'sandpiper',
  'seahorse',
  'seal',
  'shark',
  'sheep',
  'snake',
  'sparrow',
  'squid',
  'squirrel',
  'starfish',
  'swan',
  'tiger',
  'turkey',
  'turtle',
  'whale',
  'wolf',
  'wombat',
  'woodpecker',
  'zebra',
]
const animalsChinese = [
  '羚羊',
  '獾',
  '蝙蝠',
  '熊',
  '蜜蜂',
  '甲虫',
  '野牛',
  '野猪',
  '蝴蝶',
  '猫',
  '毛虫',
  '黑猩猩',
  '蟑螂',
  '奶牛',
  '郊狼',
  '螃蟹',
  '乌鸦',
  '鹿',
  '狗',
  '海豚',
  '驴',
  '蜻蜓',
  '鸭子',
  '鹰',
  '大象',
  '火烈鸟',
  '苍蝇',
  '狐狸',
  '山羊',
  '金鱼',
  '鹅',
  '大猩猩',
  '蚱蜢',
  '仓鼠',
  '野兔',
  '刺猬',
  '河马',
  '犀鸟',
  '马',
  '蜂鸟',
  '鬣狗',
  '水母',
  '袋鼠',
  '考拉',
  '瓢虫',
  '豹',
  '狮子',
  '蜥蜴',
  '龙虾',
  '蚊子',
  '蛾子',
  '老鼠',
  '章鱼',
  '河马',
  '猩猩',
  '水獭',
  '猫头鹰',
  '牛',
  '牡蛎',
  '熊猫',
  '鹦鹉',
  '鹈鹕',
  '企鹅',
  '猪',
  '鸽子',
  '豪猪',
  '负鼠',
  '浣熊',
  '老鼠',
  '驯鹿',
  '犀牛',
  '滨鹬',
  '海马',
  '海豹',
  '鲨鱼',
  '绵羊',
  '蛇',
  '麻雀',
  '鱿鱼',
  '松鼠',
  '海星',
  '天鹅',
  '老虎',
  '火鸡',
  '乌龟',
  '鲸鱼',
  '狼',
  '袋熊',
  '啄木鸟',
  '斑马',
]

function refreshPage() {
  location.reload()
}
</script>
<style lang="scss" scoped>
.grid-content {
  border-radius: 4px;
  min-height: 36px;
}
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

          &:hover {
            color: rgb(255, 140, 0);
          }
        }
        span {
          display: block;
          margin-top: 30px;
          color: $light-gray-font-color;
        }
      }
    }

    .grid-container {
      margin-top: 20px;
      display: grid;
      grid-template-columns: repeat(3, 1fr);
      grid-gap: 30px;

      .grid-item {
        background-color: $background-color;
        border-radius: 5px;
        box-shadow:
          0.2rem 0.2rem 0.4rem #c8d0e7,
          -0.2rem -0.2rem 0.4rem #fff;
        padding: 10px;
        cursor: pointer;
        h2 {
          font-size: 24px;
          font-weight: 600;
          margin-bottom: 5px;
        }
        span {
          font-size: 14px;
        }
      }
    }
  }
}
</style>
