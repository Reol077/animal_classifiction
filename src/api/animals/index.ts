import request from '@/utils/request'
import type { typeAnimals, typeAnimalsChinese } from './type'

enum API {
  ANIMALS_URL = '/home/animals',
  ANIMALS_CHINESE_URL = '/home/animalsChinese',
}

export const reqAnimals = () => request.get<any, typeAnimals>(API.ANIMALS_URL)
export const reqAnimalsChinese = () =>
  request.get<any, typeAnimalsChinese>(API.ANIMALS_CHINESE_URL)
