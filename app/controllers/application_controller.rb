class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session

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
            p curr_route
            updated_route = {route: curr_route[:route] << next_step.id, tail: next_tail}
            if route_achieved == true
              return updated_route
            else
              new_possible_routes << updated_route
              curr_route[:route] = curr_route[:route][0..-2]
            end
          end
        end
      end
      possible_routes = new_possible_routes
    end
    # possible_routes
    return "No route found."
  end
end
