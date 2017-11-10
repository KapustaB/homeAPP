class User < ApplicationRecord
  has_many :user_houses
  has_many :houses, :through => :user_houses
end
