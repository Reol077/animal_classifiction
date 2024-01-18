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
          <div v-if="isShowChart" class="chartBox">
            <div class="switch">
              <el-switch
                v-model="lang"
                inline-prompt
                active-text="英"
                inactive-text="汉"
                size="large"
                @change="switchLang"
              />
            </div>
            <div ref="myChart" class="myChart"></div>
          </div>
        </el-col>
        <el-col :span="6" class="right"></el-col>
      </el-row>
    </el-main>
  </el-container>
</template>
<script lang="ts" setup>
import useAnimalStore from '@/store/modules/animals'
import useIdentifyStore from '@/store/modules/identify'
import { useRouter } from 'vue-router'
import { ref, onMounted, nextTick } from 'vue'
import { reqExist, reqGetCnName } from '@/api/animals'
import { ECharts, EChartOption, init } from 'echarts'

import 'swiper/css'
import 'swiper/css/pagination'
import 'swiper/css/navigation'

const router = useRouter()
const animalStore = useAnimalStore()
const identifyStore = useIdentifyStore()
const currentAnimal: string = String(router.currentRoute.value.params.animal)
const imageSrc = 'src/assets/image/show_bg/' + currentAnimal + '.jpg'
const myChart = ref<any>()
const lang = ref(true)
let isShowChart = ref(false)
isShowChart.value = identifyStore.hasValues()

const myCharts = ref<ECharts>()
const xData = identifyStore.getAllLabels()
const yData = identifyStore.getAllProbabilities()
const option: EChartOption = {
  title: {
    text: identifyStore.title,
    left: 'center',
  },
  xAxis: {
    type: 'category',
    data: xData,
    axisLabel: {
      interval: 0,
      rotate: 0,
    },
  },
  yAxis: {
    type: 'value',
  },
  series: [
    {
      data: yData,
      type: 'bar',
    },
  ],
}

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
  nextTick(async () => {
    if (isShowChart.value === true) {
      myCharts.value = init(myChart.value!)
      myCharts.value.setOption(option)
    }
  })
}

async function switchLang() {
  const { results } = await reqGetCnName({ engName: xData })
  const option = myCharts.value!.getOption()
  if (Array.isArray(option.xAxis)) {
    const data = option.xAxis[0].data
    let newData: string[] = []
    if (lang.value === false) {
      newData =
        data?.map((engName) => {
          const translation = results.find((name) => name.eng === engName)
          return translation ? String(translation.cn) : String(engName)
        }) || []
    } else {
      newData = xData
    }
    option.xAxis[0].data = newData
    myCharts.value?.setOption(option)
  }
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
        box-shadow: $box-shadow-inset-value;
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
      .chartBox {
        .switch {
          display: flex;
          justify-content: flex-end;

          .el-switch {
            --el-switch-on-color: #4169e1;
            --el-switch-off-color: #cd5c5c;
          }
        }
        .myChart {
          width: 100%;
          height: 300px;
        }
      }
    }
  }
}
</style>
