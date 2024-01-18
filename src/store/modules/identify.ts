import { defineStore } from 'pinia'

interface Label {
  label: string
  probability: number
}

interface Labels {
  labels: Label[]
  title: string
}

const useIdentifyStore = defineStore('identify', {
  state: (): Labels => {
    return {
      labels: [
        { label: 'oyster', probability: 0.37605780363082886 },
        { label: 'hamster', probability: 0.1057547852396965 },
        { label: 'cat', probability: 0.10020481050014496 },
        { label: 'swan', probability: 0.043158117681741714 },
        { label: 'mouse', probability: 0.037244781851768494 },
        { label: 'shark', probability: 0.03695996478199959 },
        { label: 'pig', probability: 0.035404376685619354 },
        { label: 'dog', probability: 0.019995015114545822 },
        { label: 'squid', probability: 0.019070295616984367 },
        { label: 'starfish', probability: 0.018850106745958328 },
      ],
      title: '识别次数',
    }
  },
  actions: {
    setValue({ labels }: Labels) {
      this.labels = labels
    },
    hasValues(): boolean {
      return this.labels.length > 0
    },
    getAllLabels(): string[] {
      return this.labels.map((label) => label.label)
    },
    getAllProbabilities(): number[] {
      return this.labels.map((label) => label.probability)
    },
  },
})

export default useIdentifyStore
