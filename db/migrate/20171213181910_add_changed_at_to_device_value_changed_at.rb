class AddChangedAtToDeviceValueChangedAt < ActiveRecord::Migration[5.1]
  def change
    add_column :device_value_changed_ats, :changed_at, :timestamp
  end
end
