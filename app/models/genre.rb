class Genre < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },   
    { id: 2, name: '映画' },
    { id: 3, name: '小説' },
    { id: 4, name: 'ライトノベル' },
    { id: 5, name: 'マンガ' },
    { id: 6, name: 'アニメ' },
    { id: 7, name: 'ドラマ' },
    { id: 8, name: 'その他' }
  ]
 
  end