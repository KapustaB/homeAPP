class FloorsSerializer < ActiveModel::Serializer
  attributes :id, :name, :level
  attribute :rooms, serializer: RoomsSerializer
end
