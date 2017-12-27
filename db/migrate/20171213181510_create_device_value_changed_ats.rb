class CreateDeviceValueChangedAts < ActiveRecord::Migration[5.1]
  def change
    create_table :device_value_changed_ats do |t|

      t.timestamps
    end
  end
end
