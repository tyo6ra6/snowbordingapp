class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


         validates :nickname, presence: true
         validates :birth_day, presence: true
         validates :favorites_ski_resort, presence: true


         extend ActiveHash::Associations::ActiveRecordExtensions
         belongs_to :generation
         

         validates :generation_id, numericality: { other_than: 1 }

end
