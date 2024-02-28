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
      <el-row :gutter="20" class="firstLine">
        <el-col :span="8" class="left">
          <div class="image">
            <el-image :src="imageSrc"></el-image>
          </div>
        </el-col>
        <el-col :span="16" class="right">
          <div class="rightBox">
            <div v-if="isShowChart" class="chartBox">
              <div class="switch">
                <el-switch
                  v-model="lang"
                  inline-prompt
                  active-text="EN"
                  inactive-text="汉"
                  size="large"
                  @change="switchLang"
                />
              </div>
              <div ref="myChart" class="myChart"></div>
            </div>
            <div v-if="!isShowChart" class="uploadBox">
              <div class="text">上传一张图片试试吧</div>
              <div class="upload">
                <el-upload
                  drag
                  action="http://localhost:5173/api/upload"
                  :limit="1"
                  :before-upload="handleLoading"
                  :on-success="handleSuccess"
                >
                  <el-icon class="el-icon--upload"><upload-filled /></el-icon>
                  <div class="el-upload__text">
                    将文件拖拽至此或者
                    <em>点击上传</em>
                  </div>
                </el-upload>
              </div>
            </div>
          </div>
        </el-col>
      </el-row>
      <el-row class="secondLine">
        <el-col :span="24" class="about">
          <span>相关介绍</span>
        </el-col>
      </el-row>
      <el-row :gutter="20" class="thirdLine">
        <el-col :span="24" class="box">
          <div class="card">
            <div class="header">维基百科-{{ animalStore.translate }}</div>
            <div class="iframe">
              <iframe
                :src="wiki"
                border="0"
                scrolling="yes"
                frameborder="no"
                framespacing="0"
                allowfullscreen="true"
                sandbox="allow-top-navigation allow-same-origin allow-forms allow-scripts"
                class="inner_iframe"
              ></iframe>
            </div>
          </div>
        </el-col>
      </el-row>
      <el-row :gutter="20" class="forthLine">
        <el-col :span="24" class="box">
          <div class="card">
            <div class="header">哔哩哔哩-{{ animalStore.translate }}</div>
            <div class="iframe">
              <iframe
                :src="bilibili"
                scrolling="no"
                border="0"
                frameborder="no"
                framespacing="0"
                allowfullscreen="true"
                sandbox="allow-top-navigation allow-same-origin allow-forms allow-scripts"
                class="inner_iframe"
              ></iframe>
            </div>
          </div>
        </el-col>
      </el-row>
    </el-main>
    <BackTop></BackTop>
  </el-container>
</template>
<script lang="ts" setup>
import useAnimalStore from '@/store/modules/animals'
import useIdentifyStore from '@/store/modules/identify'
import { useRouter } from 'vue-router'
import { ref, onMounted, nextTick } from 'vue'
import {
  reqExist,
  reqGetCnName,
  reqGetBilibili,
  reqGetWiki,
} from '@/api/animals'
import { ECharts, EChartOption, init } from 'echarts'
import { UploadFilled } from '@element-plus/icons-vue'
import { ElLoading } from 'element-plus'

import 'swiper/css'
import 'swiper/css/pagination'
import 'swiper/css/navigation'

const router = useRouter()
const animalStore = useAnimalStore()
const identifyStore = useIdentifyStore()
const currentAnimal: string = String(router.currentRoute.value.params.animal)
const imageSrc =
  identifyStore.imageSrc || 'src/assets/image/show_bg/' + currentAnimal + '.jpg'
const myChart = ref<any>()
const lang = ref(false)
let bilibili = ref<string>('')
let wiki = ref<string>('https://zh.wikipedia.org/wiki/')
let isShowChart = ref(false)
isShowChart.value = identifyStore.hasValues()

const myCharts = ref<ECharts>()
const xData = identifyStore.getAllLabels()
const yData = identifyStore.getAllProbabilities()
const option: EChartOption = {
  title: {
    text: identifyStore.entitle,
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
function handleLoading() {
  ElLoading.service({ fullscreen: true })
}

function handleSuccess(res: any) {
  identifyStore.setLabels(res)
  identifyStore.setImageSrc()
  ElLoading.service().close()
  const label = res.labels[0].label
  router.push('/show/' + label)
}
function backup() {
  identifyStore.deleteLabels()
  identifyStore.deleteImageSrc()
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
      switchLang()
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
      console.log(option.title)
    } else {
      newData = xData
    }
    option.xAxis[0].data = newData
  }
  if (Array.isArray(option.title)) {
    if (lang.value === false) {
      option.title[0].text = identifyStore.zhtitle
    } else {
      option.title[0].text = identifyStore.entitle
    }
  }
  myCharts.value?.setOption(option)
}

async function getBilibili() {
  const { results } = await reqGetBilibili({ name: currentAnimal })
  bilibili.value = String(results[0].bilibili) + '&high_quality=1&danmaku=0'
}

async function getwiki() {
  const { results } = await reqGetWiki({ name: currentAnimal })
  wiki.value = String(results[0].wiki)
  console.log(wiki);
}

onMounted(() => {
  loadPage()
  loadChart()
  getBilibili()
  getwiki()
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
    .firstLine {
      .left {
        .image {
          display: flex;
          align-items: center;
          justify-content: center;
          height: 300px;
          box-shadow: $box-shadow-value;
          border-radius: 25px;

          .el-image {
            height: 250px;
          }
        }
      }
      .right {
        .rightBox {
          box-shadow: $box-shadow-value;
          height: 100%;
          border-radius: 25px;
          .chartBox {
            .switch {
              display: flex;
              justify-content: flex-end;
              height: 30px;

              .el-switch {
                padding-top: 10px;
                padding-right: 20px;
                border-radius: 25px;
                --el-switch-on-color: #4169e1;
                --el-switch-off-color: #cd5c5c;
              }
            }
            .myChart {
              width: 100%;
              height: 270px;
            }
          }
          .uploadBox {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;

            .text {
              height: 80px;
              display: flex;
              justify-content: center;
              align-items: center;
              font-size: 24px;
              letter-spacing: 10px;
              font-family: 'sans-serif';
              text-shadow: 2px 2px 8px rgba(0, 0, 0, 0.25);
              font-weight: bolder;
              color: #fff;
            }
            .upload {
              width: 70%;
            }
          }
        }
      }
    }
    .secondLine {
      margin-top: 50px;
      .about {
        display: flex;
        align-items: center;
        justify-content: center;

        span {
          font-size: 32px;
          letter-spacing: 5px;
          font-family: 'San Francisco';
          font-weight: 600;
          color: $font-color-deep;
        }
      }
    }
    .box {
      display: flex;
      align-items: center;
      justify-content: center;
    }
    .card {
      box-shadow: $box-shadow-value;
      border-radius: 15px;
      width: 70%;
    }
    .header {
      display: flex;
      align-items: center;
      justify-content: center;
      height: 50px;
      font-size: 20px;
      letter-spacing: 5px;
      font-family: 'San Francisco';
      font-weight: 700;
      color: #fff;
      background-color: rgb(251, 114, 153);
      border-radius: 15px 15px 0 0;
    }

    .iframe {
      position: relative;
      padding-bottom: 56.25%;
      overflow: hidden;
      max-width: 100%;
      height: auto;
      overflow: hidden;

      .inner_iframe {
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        border-radius: 0 0 15px 15px;
      }
    }
    .thirdLine {
      margin-top: 50px;
      .box {
        .header {
          background-color: rgb(188, 190, 192);
        }
        .iframe {
          .inner_iframe {
            width: calc(100% + 16px);
          }
        }
      }
    }
    .forthLine {
      margin-top: 50px;
    }
  }
}
</style>
