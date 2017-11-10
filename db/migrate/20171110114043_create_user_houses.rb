class CreateUserHouses < ActiveRecord::Migration[5.1]
  def change
    create_table :user_houses do |t|
      t.integer :id_house
      t.integer :id_user

      t.timestamps
    end
  end
end
