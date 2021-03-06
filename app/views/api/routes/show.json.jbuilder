# json.message "hello"
json.id @route.id
json.start_location_id @route.start_location_id
json.end_location_id @route.end_location_id
json.route_steps @route.route_steps
json.directions @route.give_directions

json.route_xs @route.route_xs
json.route_ys @route.route_ys
json.map @route.map
json.time @route.time
json.warnings @route.warnings

json.start_name Location.find(@route.start_location_id).name
json.end_name Location.find(@route.end_location_id).name