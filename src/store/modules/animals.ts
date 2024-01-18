import { defineStore } from 'pinia'

type Animal = {
  active_animal: string
  translate: string
}
const useAnimalStore = defineStore('animals', {
  state: (): Animal => {
    return {
      active_animal: '',
      translate: '',
    }
  },
  actions: {
    showAnimal(active: string, translate: string) {
      this.active_animal = active
      this.translate = translate
    },
  },
})
export default useAnimalStore
