class Location < ApplicationRecord
  has_many :routes_from, class_name: "Route", foreign_key: "start_location_id"
  has_many :routes_to, class_name: "Route", foreign_key: "end_location_id"

  def distance_from(end_point)
    point_b = Location.find_by(name: "#{end_point}")
    lat_change = lat - point_b.lat
    lat_change *= 23.057 # leagues per degree lat
    lng_change = lng - point_b.lng
    lng_change *= 19.304 # leages per degree lat
    @distance = Math.sqrt((lat_change) ** 2 + (lng_change) ** 2)
    @distance
  end
end
