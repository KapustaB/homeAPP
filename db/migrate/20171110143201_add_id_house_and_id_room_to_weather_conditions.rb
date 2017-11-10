class AddIdHouseAndIdRoomToWeatherConditions < ActiveRecord::Migration[5.1]
  def change
    add_column :weather_conditions, :house_id, :integer
    add_column :weather_conditions, :room_id, :integer
  end
end
