class CreateValueTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :value_types do |t|
      t.string :name
    end
  end
end
