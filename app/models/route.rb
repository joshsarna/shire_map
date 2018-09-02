class Route < ApplicationRecord
  has_many :route_steps
  has_many :route_segments, through: :route_steps

  def give_directions
    directions = []
    i = 0
    route_steps.each do |step|
      route_segment = RouteSegment.find(step.route_segment_id)
      # direction logic
      direction = "east"
      if i == 0 # first step
        if route_segment.nw_end == start_location_id # start going south or east
          direction = "BOOP" # delete this soon
          if (Location.find(route_segment.nw_end).lng - Location.find(route_segment.se_end).lng).abs > (Location.find(route_segment.nw_end).lat - Location.find(route_segment.se_end).lat).abs
            direction = "east"
          else
            direction = "south"
          end
        else
          if (Location.find(route_segment.nw_end).lng - Location.find(route_segment.se_end).lng).abs > (Location.find(route_segment.nw_end).lat - Location.find(route_segment.se_end).lat).abs
            direction = "west"
          else
            direction = "north"
          end
        end
      else
        if route_segment.nw_end == RouteSegment.find(route_steps[i-1].route_segment_id).nw_end || route_segment.nw_end == RouteSegment.find(route_steps[i-1].route_segment_id).se_end # start going south or east
          direction = "BOOP" # delete this soon
          if (Location.find(route_segment.nw_end).lng - Location.find(route_segment.se_end).lng).abs > (Location.find(route_segment.nw_end).lat - Location.find(route_segment.se_end).lat).abs
            direction = "east"
          else
            direction = "south"
          end
        else
          if (Location.find(route_segment.nw_end).lng - Location.find(route_segment.se_end).lng).abs > (Location.find(route_segment.nw_end).lat - Location.find(route_segment.se_end).lat).abs
            direction = "west"
          else
            direction = "north"
          end
        end
      end
      ####
      road = route_segment.road
      distance = route_segment.distance.round(1)
      text = "Head #{direction} on #{road} for #{distance} leagues"
      if directions[0] && text[0..16] == directions[-1][0..16]
        # combine
        distance += RouteSegment.find(route_steps[i-1].route_segment_id).distance.round(1)
        directions[-1] = "Head #{direction} on #{road} for #{distance} leagues"
      else
        directions << text
      end
      i += 1
    end
    directions.each do |next_direction|
      if next_direction[-11..-9] == "0.0"
        next_direction[-11..-1] = "a ways"
      end
      if next_direction[-11] == "0"
        next_direction[-11..-1] = "#{(next_direction[-11..-9].to_f * 3).round(1)} miles"
      end
    end
    directions
  end

  def coords
    points = Set.new([])
    points << {Location.find(start_location_id).lat => Location.find(start_location_id).lng}
    route_steps.each do |step|
      route_segment = RouteSegment.find(step.route_segment_id)
      nw_end = Location.find(route_segment.nw_end)
      se_end = Location.find(route_segment.se_end)
      points << {nw_end.lat => nw_end.lng}
      points << {se_end.lat => se_end.lng}
    end
    points << {Location.find(end_location_id).lat => Location.find(end_location_id).lng}
    points 
  end

  def route_xs
    points = coords
    lngs = []
    points.each do |point|
      lngs << point.values[0]
    end
    lngs
  end

  def route_ys
    points = coords
    lats = []
    points.each do |point|
      lats << point.keys[0]
    end
    lats
  end

  def map
    start_location = Location.find(start_location_id)
    end_location = Location.find(end_location_id)
    levels = ["quaternary", "tertiary", "secondary", "primary"]
    i = 0
    map_found = false
    while !map_found # this will always be true
      map_set = Map.where(level: levels[i])
      map_set.each do |map|
        if start_location.lat > map.lat_floor && start_location.lng > map.lng_floor && end_location.lat > map.lat_floor && end_location.lng > map.lng_floor && start_location.lat < map.lat_ceiling && start_location.lng < map.lng_ceiling && end_location.lat < map.lat_ceiling && end_location.lng < map.lng_ceiling
          return map
          map_found = true
        end
      end
      i += 1
    end
  end

  def time
    total_time = 0
    route_steps.each do |step|
      total_time += RouteSegment.find(step.route_segment_id).time
    end
    total_time
  end

  def warnings
    warnings = []
    route_steps.each do |step|
      step.route_segment.route_warnings.each do |warning|
        warnings << {text: warning.text, road: warning.route_segment.road}
      end
    end
    warnings
  end
end