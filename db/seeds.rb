# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


25.times do
  @device_value_changed_at = DeviceValueChangedAt.new
  @device_value_changed_at.device_id = 45
  @device_value_changed_at.created_at =  Time.at(Time.local(2017, 10, 12) + rand * (Time.now.to_f - Time.local(2017, 10, 12).to_f))
  @device_value_changed_at.value = rand(1..25)
  @device_value_changed_at.save
end

