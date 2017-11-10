class AddIdHouseToFloor < ActiveRecord::Migration[5.1]
  def change
    add_column :floors, :house_id, :integer
  end
end
