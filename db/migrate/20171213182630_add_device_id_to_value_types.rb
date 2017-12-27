class AddDeviceIdToValueTypes < ActiveRecord::Migration[5.1]
  def change
    add_column :value_types, :device_id, :integer
  end
end
