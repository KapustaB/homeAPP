class AddRoomIdToDevices < ActiveRecord::Migration[5.1]
  def change
    add_column :devices, :room_id, :integer
  end
end
