class CreateSearches < ActiveRecord::Migration[5.2]
  def change
    create_table :searches do |t|
      t.string :keywords
      t.string :category
      t.integer :min_price
      t.integer :max_price
      t.integer :min_size
      t.integer :max_size
      t.integer :num_rooms

      t.timestamps
    end
  end
end
