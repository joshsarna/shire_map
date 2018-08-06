class Route < ApplicationRecord
  has_many :route_steps
  has_many :route_segments, through: :route_steps
end
