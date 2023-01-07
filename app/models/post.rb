class Post < ApplicationRecord

  belongs_to :user

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :area
  belongs_to :prefecture
  belongs_to :weather
end
