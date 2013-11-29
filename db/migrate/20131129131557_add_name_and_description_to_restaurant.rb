class AddNameAndDescriptionToRestaurant < ActiveRecord::Migration
  def change
    add_column :restaurants, :name, :string
    add_column :restaurants, :description, :text
  end
end
