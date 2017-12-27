class RoomsSerializer < ActiveModel::Serializer
  attributes :id
  #attribute :devices

  def devices
    object.devices.map do |device|
      DevicesSerializer.new(device)
    end
  end
end
