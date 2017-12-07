class AddTokenToDevice < ActiveRecord::Migration[5.1]
  def change
    add_column :devices, :token, :string
  end
end
