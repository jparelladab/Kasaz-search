class AddPhotoLinkToAppartment < ActiveRecord::Migration[5.2]
  def change
    add_column :apartments, :photo_link, :string
  end
end
