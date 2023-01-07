class Post < ApplicationRecord

  belongs_to :user

  has_one_attached :image

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :area
  belongs_to :prefecture
  belongs_to :weather
end
