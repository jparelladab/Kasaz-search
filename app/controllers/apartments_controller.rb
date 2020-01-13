class ApartmentsController < ApplicationController
  def index
    # @apartments = Apartment.search(params[:search])
    @apartments = Apartment.all
    @new_search = Search.new
    @markers = @apartments.map do |apartment|
      {
        lat: apartment.latitude,
        lng: apartment.longitude
      }
    end
  end
end
