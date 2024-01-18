import { defineStore } from 'pinia'

type ScrollY = {
  scrollY: number
}
const usePageStore = defineStore('page', {
  state: (): ScrollY => {
    return {
      scrollY: 0,
    }
  },
  actions: {
    setScrollY(data: number) {
      this.scrollY = data
    },
    getScrollY() {
      return this.scrollY
    },
  },
})
export default usePageStore
