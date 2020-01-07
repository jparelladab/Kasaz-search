class AddColumnsToAppartment < ActiveRecord::Migration[5.2]
  def change
    add_column :apartments, :title, :string
    add_column :apartments, :price, :integer
    add_column :apartments, :sqm, :integer
    add_column :apartments, :number_of_bedrooms, :integer
    add_column :apartments, :number_of_bathrooms, :integer
  end
end

