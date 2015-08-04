class PlacesController < ApplicationController
  def index
    if params[:lat].present? || params[:long].present?
      render json: GooglePlacesClient.all(params[:lat], params[:long], {name: params[:name]})
    else
      render json: "You need to specify lat and long parameters", status: 404
    end
  end
end
