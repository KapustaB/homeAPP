class Floor < ApplicationRecord
  has_many :rooms
  belongs_to :house
  accepts_nested_attributes_for :rooms, reject_if: :all_blank, allow_destroy: true
end
