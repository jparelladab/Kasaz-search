class Search < ApplicationRecord

  def search_apartments
    apartments = Apartment.all
    apartments = apartments.where(["title LIKE ?", "%#{keywords}%"]) if keywords.present?
    apartments = apartments.where(["price >= ?", min_price]) if min_price.present?
    apartments = apartments.where(["price <= ?", max_price]) if max_price.present?
    apartments = apartments.where(["sqm >= ?", min_size]) if min_size.present?
    apartments = apartments.where(["sqm <= ?", max_size]) if max_size.present?
    apartments = apartments.where(["number_of_bedrooms >= ?", num_rooms]) if num_rooms.present?
    return apartments
  end

end
