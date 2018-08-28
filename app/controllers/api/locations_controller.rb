class Api::LocationsController < ApplicationController
  def index
    @locations = Location.where(location_type: "site")
    render "index.json.jbuilder"
  end

  def create
    @location = Location.new(
      name: params[:name],
      lat: params[:lat],
      lng: params[:lng],
      location_type: params[:location_type]
    )
    @location.save
    render "show.json.jbuilder"
  end

  def show
    @location = Location.find(params[:id])
    render "show.json.jbuilder"
  end

  def update
    @location = Location.find(params[:id])
    @location.update(
      name: params[:name] || @location.name,
      lat: params[:lat] || @location.lat,
      lng: params[:lng] || @location.lng
    )
    render "show.json.jbuilder"
  end
end
