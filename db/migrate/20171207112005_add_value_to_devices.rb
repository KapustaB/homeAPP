class AddValueToDevices < ActiveRecord::Migration[5.1]
  def change
    add_column :devices, :value, :float
    add_column :devices, :value_type_id, :integer
  end
end
