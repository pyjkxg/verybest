class CreateDishes < ActiveRecord::Migration
  def change
    create_table :dishes do |t|
      t.string :name
      t.string :description
      t.string :dish_type
      t.integer :venue_id

      t.timestamps

    end
  end
end
