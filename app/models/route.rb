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
      distance = route_segment.distance
      text = "Head #{direction} on #{road} for #{distance} leagues"
      if directions[0] && text[0..16] == directions[-1][0..16]
        # combine
        distance += RouteSegment.find(route_steps[i-1].route_segment_id).distance
        directions[-1] = "Head #{direction} on #{road} for #{distance} leagues"
      else
        directions << text
      end
      i += 1
    end
    directions
  end
end