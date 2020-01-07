class ApartmentsController < ApplicationController
  def index
    @apartments = Apartment.geocoded
    @markers = @apartments.map do |apartment|
      {
        lat: apartment.latitude,
        lng: apartment.longitude
      }
    end
  end

  def show
    @apartment = Apartment.find(params[:id])
  end
end
