class Api::RoutesController < ApplicationController
  belongs_to :start_location, class_name: "Location"
  belongs_to :end_location, class_name: "Location"

  def create
    parameters = {
      start_location_id: params[:start_location_id],
      end_location_id: params[:end_location_id],
      total_distance: Location.find(:start_location_id).distance_from("#{Location.find(:end_location_id).name}"),
      total_time: total_distance * 60 # a leaugue is how long one can walk in an hour
    }
    @route = Route.new(parameters)
    @route.save
    render "show.json.jbuilder"
  end
end
