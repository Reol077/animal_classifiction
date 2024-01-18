interface animal {
  id: number
  english_name: string
  chinese_name: string
}
export interface Animal {
  status: number
  animals: animal[]
}

interface exist {
  flag: number
  eng: string
  cn: string
}
export interface Exist {
  status: number
  results: exist[]
}
export interface ExistAnimal {
  animal: string
}

export interface CnName {
  engName: string[]
}

interface NameResults {
  eng: string
  cn: string
}
export interface AnimalTranslation {
  status: number
  results: NameResults[]
}
