class AddDeviceIdToDeviceValueChangedAt < ActiveRecord::Migration[5.1]
  def change
    add_column :device_value_changed_ats, :device_id, :integer
  end
end
