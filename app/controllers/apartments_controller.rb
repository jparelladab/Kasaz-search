class ApartmentsController < ApplicationController
  def index
    @apartments = Apartment.search(params[:search])
    @markers = @apartments.map do |apartment|
      {
        lat: apartment.latitude,
        lng: apartment.longitude
      }
    end
  end

end
