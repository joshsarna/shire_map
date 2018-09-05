class Api::LocationsController < ApplicationController
  def index
    # @locations = Location.where(location_type: "site")
    @locations = Location.all # switch back when done with dev mode
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

  def lodging
    client_lat = params[:client_lat]
    client_lng = params[:client_lng]
    p "*" * 50
    p "lng"
    p client_lng
    p "lat"
    p client_lat
    locations = Location.all
    minimum_distance = 1000000000000
    nearest_location = Location.first
    locations.each do |location|
      lat_change = client_lat - location.lat
      lat_change *= 23.057 # leagues per degree lat
      lng_change = client_lng - location.lng
      lng_change *= 19.304 # leages per degree lat
      distance = Math.sqrt((lat_change) ** 2 + (lng_change) ** 2)
      if distance < minimum_distance
        minimum_distance = distance
        nearest_location = location
      end
    end
    lodgings = Location.where(lodging_site: true)
    lodging_distances = {}
    lodgings.each do |lodging|
      lodging_distances[lodging.name] = lodging.distance_from(nearest_location.name)
    end
    # find the smallest of these distances and then do the other stuff (see trello)
    nearby_lodgings = lodging_distances.select{|_key,value| value <= lodging_distances.values.min}
    routes = []
    nearby_lodgings.each do |lodging_site|
      routes << find_route(nearest_location.id, Location.find_by(name: lodging_site).id)
    end
    i = 0
    shortest_route = 100000000000000000
    shortest_route_index = -1
    routes.each do |route|
      if route[:route].length < shortest_route
        shortest_route = route[:route].length
        shortest_route_index = i
      end
      i += 1
    end
    @start_name = nearest_location.name
    @end_name = Location.find(routes[shortest_route_index][:tail]).name
    render "lodging.json.jbuilder"
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