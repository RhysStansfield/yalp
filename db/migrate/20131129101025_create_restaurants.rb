class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.text :review
      t.integer :rating

      t.timestamps
    end
  end
end
