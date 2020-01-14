class SearchesController < ApplicationController
  def create
    @search = Search.create(search_params)
    redirect_to @search
  end

  def show
    @search = Search.find(params[:id])
    @apartments = search_apartments(@search)
    @new_search = Search.new
    @apartments_all = Apartment.all
  end

  private

  def search_params
    params.require(:search).permit(:keywords, :min_price, :max_price, :min_size, :max_size, :num_rooms)
  end

  def search_apartments(search)
    apartments = Apartment.all
    apartments = apartments.where(["LOWER(address) LIKE ?", "%#{search.keywords.downcase}%"]) if search.keywords.present?
    apartments = apartments.where(["price >= ?", search.min_price]) if (search.min_price != 0 && !search.min_price.nil?)
    apartments = apartments.where(["price <= ?", search.max_price]) if (search.max_price != 0 && !search.max_price.nil?)
    apartments = apartments.where(["sqm >= ?", search.min_size]) if (search.min_size != 0 && !search.min_size.nil?)
    apartments = apartments.where(["sqm <= ?", search.max_size]) if (search.max_size != 0 && !search.max_size.nil?)
    apartments = apartments.where(["number_of_bedrooms >= ?", search.num_rooms]) if (search.num_rooms != 0 && !search.num_rooms.nil?)
    return apartments
  end
end
