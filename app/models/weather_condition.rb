class WeatherCondition < ApplicationRecord
  belongs_to :room
  belongs_to :house
end
