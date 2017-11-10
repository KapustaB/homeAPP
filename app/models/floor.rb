class Floor < ApplicationRecord
  has_many :rooms
  belongs_to :house
end
