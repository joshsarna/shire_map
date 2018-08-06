class RouteStep < ApplicationRecord
  belongs_to :route
  belongs_to :route_segment
end
