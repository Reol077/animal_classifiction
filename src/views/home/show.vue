<template>
  <el-container>
    <el-header>
      <div class="backup" @click="backup">
        <SvgIcon name="backup" width="36" height="36" color="#999"></SvgIcon>
      </div>
      <span class="text">
        <span>{{ animalStore.active_animal }}</span>
        <span>（中文：{{ animalStore.translate }}）</span>
      </span>
      <SvgIcon
        :name="animalStore.active_animal"
        width="50"
        height="50"
      ></SvgIcon>
    </el-header>
    <el-main>
      <el-row>
        <el-col :span="6" class="left">
          <el-row>
            <el-image :src="imageSrc"></el-image>
          </el-row>
        </el-col>
        <el-col :span="12" class="middle">
          <div ref="myChart" class="myChart"></div>
        </el-col>
        <el-col :span="6" class="right"></el-col>
      </el-row>
    </el-main>
  </el-container>
</template>
<script lang="ts" setup>
import useAnimalStore from '@/store/modules/animals'
import { useRouter } from 'vue-router'
import { ref, onMounted } from 'vue'
import { reqExist } from '@/api/animals'
import { ECharts, EChartOption, init } from 'echarts'

import 'swiper/css'
import 'swiper/css/pagination'
import 'swiper/css/navigation'

const router = useRouter()
const animalStore = useAnimalStore()
const currentAnimal: string = String(router.currentRoute.value.params.animal)
const imageSrc = 'src/assets/image/show_bg/' + currentAnimal + '.jpg'
const myChart = ref<any>()

function backup() {
  router.push('/')
}

async function loadPage() {
  const exist: { animal: string } = {
    animal: currentAnimal,
  }
  const result = (await reqExist(exist)).results[0]
  if (result.flag === 1) {
    animalStore.showAnimal(result.eng, result.cn)
  } else {
    router.push('/404')
  }
}

function loadChart() {
  const myCharts = ref<ECharts>()

  myCharts.value = init(myChart.value!)
  const option: EChartOption = {
    xAxis: {
      type: 'category',
      data: ['猪', '牛', '羊', '猴', '鼠', '虎', '子', '马', '龙', '蛇'],
    },
    yAxis: {
      type: 'value',
    },
    series: [
      {
        data: [1, 0.5, 0.25, 0, 0.01, 0.01, 0.01, 0.59, 0.03, 0.08],
        type: 'bar',
      },
    ],
  }
  myCharts.value.setOption(option)
}

onMounted(async () => {
  loadPage()
  loadChart()
})
</script>
<style lang="scss" scoped>
.el-container {
  padding: 10px;
  .el-header {
    display: flex;
    justify-content: space-between;
    align-items: center;
    .backup {
      display: flex;
      align-items: center;
      height: 50px;
      width: 50px;
      border-radius: 10px;
      padding: 10px;
      box-shadow: $box-shadow-value;
      cursor: pointer;
      &:active {
        box-shadow: $box-shadow-inser-value;
      }
    }
    .text {
      font-size: 20px;
      color: $font-color-deep;
      span:first-child {
        font-weight: bolder;
      }
    }
  }
  .el-main {
    margin-top: 20px;
    .left {
      .el-row {
        height: 50%;
        align-items: center;
        justify-content: center;
        height: 300px;

        .el-image {
          height: 250px;
        }
      }
    }
    .middle {
      .myChart {
        width: 100%;
        height: 300px;
      }
    }
  }
}
</style>
