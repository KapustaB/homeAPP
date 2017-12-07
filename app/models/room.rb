class Room < ApplicationRecord
  belongs_to :floor
  has_one :weather_condition
  has_many :devices
  accepts_nested_attributes_for :devices, reject_if: :all_blank, allow_destroy: true
end
