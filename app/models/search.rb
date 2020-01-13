class Search < ApplicationRecord
  def search_apartments(search)
    apartments = Apartment.all
    apartments = apartments.where(["LOWER(title) LIKE ?", "%#{search.keywords.downcase}%"]) if keywords.present?
    apartments = apartments.where(["price >= ?", min_price]) if (min_price != 0 && !min_price.nil?)
    apartments = apartments.where(["price <= ?", max_price]) if (max_price != 0 && !max_price.nil?)
    apartments = apartments.where(["sqm >= ?", min_size]) if (min_size != 0 && !min_size.nil?)
    apartments = apartments.where(["sqm <= ?", max_size]) if (max_size != 0 && !max_size.nil?)
    apartments = apartments.where(["number_of_bedrooms >= ?", num_rooms]) if (num_rooms != 0 && !num_rooms.nil?)
    return apartments
  end
end
