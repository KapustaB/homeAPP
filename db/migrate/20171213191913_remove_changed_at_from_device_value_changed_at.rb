class RemoveChangedAtFromDeviceValueChangedAt < ActiveRecord::Migration[5.1]
  def change
    remove_column :device_value_changed_ats, :changed_at, :timestamp
  end
end
