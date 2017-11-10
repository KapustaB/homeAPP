class Room < ApplicationRecord
  belongs_to :floor
  has_one :weather_condition
end
