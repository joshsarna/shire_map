class Api::LocationsController < ApplicationController
  def index
    @locations = Location.all
    render "index.json.jbuilder"
  end

  def show
    @location = Location.find(params[:id])
    render "show.json.jbuilder"
  end
end
