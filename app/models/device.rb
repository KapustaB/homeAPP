class Device < ApplicationRecord

  belongs_to :room

  before_create{ |device|
    device.token = Devise.friendly_token
  }
end
