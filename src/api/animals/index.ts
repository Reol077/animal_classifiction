import request from '@/utils/request'
import type { Animal } from './type'

enum API {
  ANIMALS_URL = '/animals',
}

export const reqAnimals = () => request.get<any, Animal>(API.ANIMALS_URL)
