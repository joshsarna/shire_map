json.array! @route_segments do |route_segment|
  json.id route_segment.id
  json.nw_end route_segment.nw_end
  json.se_end route_segment.se_end
  json.distance route_segment.distance
  json.time route_segment.time
  json.description route_segment.description
  json.road route_segment.road
  json.create_at route_segment.created_at
  json.updated_at route_segment.updated_at
end