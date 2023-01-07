class Area < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '北海道' },
    { id: 3, name: '東北' },
    { id: 4, name: '関東甲信越' },
    { id: 5, name: '中京' },
    { id: 6, name: '北陸' },
    { id: 7, name: '関西' },
    { id: 8, name: '中国・四国・九州' }
  ]

  include ActiveHash::Associations
  has_many :posts
end
