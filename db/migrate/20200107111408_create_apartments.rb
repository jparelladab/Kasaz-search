class CreateApartments < ActiveRecord::Migration[5.2]
  def change
    create_table :apartments do |t|

      t.timestamps
    end
  end
end
