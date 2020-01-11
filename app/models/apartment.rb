class Apartment < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  def self.search(search)
    if search
      where(["LOWER(title) LIKE ?", "%#{search.downcase}%"])
    else
      geocoded
    end
  end

end
