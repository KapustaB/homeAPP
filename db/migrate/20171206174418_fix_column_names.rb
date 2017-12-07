class FixColumnNames < ActiveRecord::Migration[5.1]
  def change
    rename_column :user_houses, :id_house, :house_id
    rename_column :user_houses, :id_user, :user_id
  end
end
