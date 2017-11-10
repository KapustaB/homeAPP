class House < ApplicationRecord
  has_many :user_houses
  has_many :users, :through => :user_houses
  has_many :floors
  has_one :weather_condition
end
