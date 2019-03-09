class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session

  def find_route(start_id, end_id)
    segments = RouteSegment.all
    Fellowship::Fellowship.find_shortest_route(start_id, end_id, segments, "nw_end", "se_end", "distance")
  end
end