import request from '@/utils/request'
import type { Animal, Exist, ExistAnimal } from './type'

enum API {
  ANIMALS_URL = '/animals',
  IS_exist = '/exist',
}

export const reqAnimals = () => request.get<any, Animal>(API.ANIMALS_URL)
export const reqExist = (data: ExistAnimal) =>
  request.post<any, Exist>(API.IS_exist, data)
