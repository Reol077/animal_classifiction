import request from '@/utils/request'
import type {
  Animal,
  Exist,
  ExistAnimal,
  CnName,
  AnimalTranslation,
} from './type'

enum API {
  ANIMALS_URL = '/animals',
  IS_exist = '/exist',
  GET_CN_NAME = '/getCnName',
}

export const reqAnimals = () => request.get<any, Animal>(API.ANIMALS_URL)
export const reqExist = (data: ExistAnimal) =>
  request.post<any, Exist>(API.IS_exist, data)
export const reqGetCnName = (data: CnName) =>
  request.post<any, AnimalTranslation>(API.GET_CN_NAME, data)
