FactoryBot.define do
  factory :user do
    nickname              { 'ヒデ' }
    email                 { 'test@com' }
    password              { '1234567' }
    password_confirmation { password }
    generation_id         { 2 }
    birth_day             { '1999/5/24'}
    favorites_ski_resort   { 'めいほうスキー場' }
  end
end
