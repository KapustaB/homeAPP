class Device < ApplicationRecord
  has_one :value_type
  has_many :device_value_changed_ats
  belongs_to :room

  before_create{ |device|
    device.token = Devise.friendly_token
  }
end
