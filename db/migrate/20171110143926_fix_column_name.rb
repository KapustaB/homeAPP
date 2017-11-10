class FixColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :floors, :id_house, :house_id
    rename_column :rooms, :id_floor, :floor_id
    rename_column :user_houses, :id_house, :house_id
    rename_column :user_houses, :id_user, :user_id
    rename_column :weather_conditions, :id_house, :house_id
    rename_column :weather_conditions, :id_room, :room_id
  end
end
