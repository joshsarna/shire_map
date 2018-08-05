# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# locations
=begin
Location.create(name: "Greenfields", lat: 631, lng: -114)
Location.create(name: "Bindbole Wood", lat: 437, lng: -183)
Location.create(name: "Brockenborings", lat: 618, lng: -194)
Location.create(name: "The Hill", lat: 448, lng: -282)
Location.create(name: "Bridgefields", lat: 746, lng: -307)
Location.create(name: "Frogmorton", lat: 617, lng: -400)
Location.create(name: "Hobbiton", lat: 468, lng: -385)
Location.create(name: "Budgeford", lat: 738, lng: -394)
Location.create(name: "Stock", lat: 810, lng: -437)
Location.create(name: "Bywater", lat: 538, lng: -428)
Location.create(name: "Little Delving", lat: 215, lng: -433)
Location.create(name: "Michel Delving", lat: 284, lng: -528)
Location.create(name: "Waymeet", lat: 381, lng: -470)
Location.create(name: "Tuckborough", lat: 458, lng: -510)
Location.create(name: "Woodhall", lat: 727, lng: -504)
Location.create(name: "The Marish", lat: 820, lng: -553)
Location.create(name: "Shire Homesteads", lat: 304, lng: -675)
Location.create(name: "Scary", lat: 694, lng: -240)
Location.create(name: "Bag End", lat: 451, lng: -308, location_type: "site")
Location.create(name: "Mathom-House", lat: 249, lng: -501, location_type: "site")
Location.create(name: "Buckleberry Ferry", lat: 846, lng: -510, location_type: "site")
Location.create(name: "Stocktower", lat: 832, lng: -482, location_type: "site")
Location.create(name: "The Green Dragon", lat: 538, lng: -424, location_type: "site")
Location.create(name: "Bagshot Row 1", lat: 457, lng: -321, location_type: "site")
Location.create(name: "Bagshot Row 2", lat: 448, lng: -321, location_type: "site")
Location.create(name: "Bagshot Row 3", lat: 439, lng: -321, location_type: "site")
Location.create(name: "Bamfurlong", lat: 789, lng: -544, location_type: "site")
Location.create(name: "Elven Campsite", lat: 707, lng: -501, location_type: "site")
Location.create(name: "Brandywine Bridge", lat: 844, lng: -398, location_type: "site")
Location.create(name: "The Golden Perch", lat: 817, lng: -433, location_type: "site")
Location.create(name: "Bywater Bridge", lat: 461, lng: -380, location_type: "site")
Location.create(name: "Bagshot Row/Hill Lane", lat: 466, lng: -321, location_type: "intersection")
Location.create(name: "Bywater Road/Hill Lane", lat: 464, lng: -406, location_type: "intersection")
Location.create(name: "East Road/Bywater Road", lat: 533, lng: -424, location_type: "intersection")
Location.create(name: "Maggot's Lane/The Causeway", lat: 797, lng: -544, location_type: "intersection")
Location.create(name: "East Road/South to Longbottom", lat: 390, lng: -470, location_type: "intersection")
Location.create(name: "East Road/North to Little Delving", lat: 381, lng: -470, location_type: "intersection")
Location.create(name: "?Tuckborough Road/?Woodhall Road", lat: 677, lng: -510, location_type: "intersection")
Location.create(name: "?Woodhall Road/Unmarked Trail", lat: 707, lng: -497, location_type: "intersection")
Location.create(name: "East Road/North to Scary", lat: 702, lng: -446, location_type: "intersection")
Location.create(name: "East Road/The Causeway", lat: 817, lng: -432, location_type: "intersection")
Location.create(name: "?Tuckborough Road/The Causeway", lat: 807, lng: -482, location_type: "intersection")
Location.create(name: "Ferry Lane/The Causeway", lat: 802, lng: -504, location_type: "intersection")
=end


# route segments
=begin
RouteSegment.create(nw_end: 28, se_end: 27, road: "Bagshot Row")
RouteSegment.create(nw_end: 21, se_end: 34, road: "Hill Lane")
RouteSegment.create(nw_end: 27, se_end: 26, road: "Bagshot Row")
RouteSegment.create(nw_end: 26, se_end: 34, road: "Bagshot Row")
RouteSegment.create(nw_end: 34, se_end: 33, road: "Hill Lane")
RouteSegment.create(nw_end: 33, se_end: 35, road: "Hill Lane")
RouteSegment.create(nw_end: 35, se_end: 36, road: "Bywater Road")
RouteSegment.create(nw_end: 38, se_end: 36, road: "East Road")
RouteSegment.create(nw_end: 39, se_end: 38, road: "East Road")
RouteSegment.create(nw_end: 22, se_end: 39, road: "East Road")
RouteSegment.create(nw_end: 36, se_end: 25, road: "East Road")
RouteSegment.create(nw_end: 25, se_end: 42, road: "East Road")
RouteSegment.create(nw_end: 42, se_end: 43, road: "East Road")
RouteSegment.create(nw_end: 43, se_end: 31, road: "East Road")
RouteSegment.create(nw_end: 43, se_end: 32, road: "The Causeway")
RouteSegment.create(nw_end: 32, se_end: 44, road: "The Causeway")
RouteSegment.create(nw_end: 44, se_end: 24, road: "The Causeway")
RouteSegment.create(nw_end: 24, se_end: 45, road: "The Causeway")
RouteSegment.create(nw_end: 45, se_end: 37, road: "The Causeway")
RouteSegment.create(nw_end: 45, se_end: 23, road: "Ferry Lane")
RouteSegment.create(nw_end: 29, se_end: 37, road: "Maggot's Lane")
RouteSegment.create(nw_end: 40, se_end: 44, road: "?Tuckborough Road")
RouteSegment.create(nw_end: 40, se_end: 41, road: "?Woodhall Road")
RouteSegment.create(nw_end: 41, se_end: 30, road: "Unmarked Trail")
=end


# to update distances and times based on location coords
# segments = RouteSegment.all
# segments.each do |segment|
#   loc1 = Location.find(segment["nw_end"])
#   loc2 = Location.find(segment["se_end"])
#   distance = loc1.distance_from(loc2["name"])
#   segment["distance"] = distance
#   segment["time"] = distance * 60
#   segment.save
# end

def find_route(start_id,end_id)
  possible_routes = []
  directions = []
  # starts = RouteSegment.where('nw_end = ? OR se_end = ?',start_id, start_id)
  starts = RouteSegment.where(nw_end: start_id).or(RouteSegment.where(se_end: start_id))
  starts.each do |start|
    if start[:nw_end] == start_id
      first_tail = start[:se_end]
    else
      first_tail = start[:nw_end]
    end
    possible_routes << {route: [start.id], tail: first_tail}
  end
  route_achieved = false
  while possible_routes != []
    new_possible_routes = []
    possible_routes.each do |curr_route|
      nw_nexts = RouteSegment.where(nw_end: curr_route[:tail])
      se_nexts = RouteSegment.where(se_end: curr_route[:tail])
      nexts = nw_nexts + se_nexts
      nexts.each do |next_step|
        if next_step[:nw_end] === curr_route[:tail]
          next_tail = next_step[:se_end]
        else
          next_tail = next_step[:nw_end]
        end
        if next_tail == end_id
          route_achieved = true
        end
        if !curr_route[:route].index(next_step.id) || curr_route[:route].index(next_step.id) < 0
          updated_route = {route: curr_route[:route] << next_step.id, tail: next_tail}
          if route_achieved == true
            return updated_route
          else
            new_possible_routes << updated_route
          end
        end
      end
    end
    possible_routes = new_possible_routes
  end
  # possible_routes
  return "No route found."
end

p find_route(21,20)