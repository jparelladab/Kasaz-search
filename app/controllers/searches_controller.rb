class SearchesController < ApplicationController
  def create
    @search = Search.create(search_params)
    redirect_to @search
  end

  def show
    @search = Search.find(params[:id])
    @new_search = Search.new
    # @search.search_apartmentss(@search)
  end

  private

  def search_params
    params.require(:search).permit(:keywords, :min_price, :max_price, :min_size, :max_size, :num_rooms)
  end
end
