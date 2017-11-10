class CreateWeatherConditions < ActiveRecord::Migration[5.1]
  def change
    create_table :weather_conditions do |t|
      t.float :temperature
      t.float :humidity

      t.timestamps
    end
  end
end
