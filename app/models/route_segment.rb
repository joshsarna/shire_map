class RouteSegment < ApplicationRecord
  has_many :route_steps
  has_many :route_warnings
end
