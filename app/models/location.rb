class Location < ApplicationRecord
  has_many :routes_from, class_name: "Route", foreign_key: "start_location_id"
  has_many :routes_to, class_name: "Route", foreign_key: "end_location_id"

  def distance_from(end_point)
    px_per_lg = 12 # pixels per league; assuming the Shire is about 50 leagues square (it is 40 x 50 per TLOTR prologue)
    point_b = Location.find_by(name: "#{end_point}")
    @distance = Math.sqrt((lat - point_b.lat) ** 2 + (lng - point_b.lng) ** 2) / px_per_lg
    @distance
  end
end
