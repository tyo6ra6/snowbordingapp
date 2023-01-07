class Weather < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '快晴' },
    { id: 3, name: '晴れ' },
    { id: 4, name: '曇り' },
    { id: 5, name: '雪' },
    { id: 6, name: 'ガス' },
    { id: 7, name: '雨' }
  ]

  include ActiveHash::Associations
  has_many :posts
end
