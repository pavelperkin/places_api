class PlacesController < ApplicationController
  def index
    render json: [] #TODO add request to Google api
  end
end
