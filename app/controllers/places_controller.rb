class PlacesController < ApplicationController
  def index
    render json: GooglePlacesClient.all(params[:lat], params[:long], {name: params[:name]})
  end
end
