import { defineStore } from 'pinia'

interface Label {
  label: string
  probability: number
}

interface Labels {
  labels: Label[]
  title: string
  imageSrc: string
}

const useIdentifyStore = defineStore('identify', {
  state: (): Labels => {
    return {
      labels: [],
      title: '识别概率',
      imageSrc: '',
    }
  },
  actions: {
    hasValues(): boolean {
      return this.labels.length > 0
    },
    setLabels({ labels }: Labels) {
      this.labels = labels
    },

    setImageSrc() {
      this.imageSrc =
        'http://localhost:3000/api/images/upload.jpg?v=' + Math.random()
    },
    deleteLabels() {
      this.labels = []
    },
    deleteImageSrc() {
      this.imageSrc = ''
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
