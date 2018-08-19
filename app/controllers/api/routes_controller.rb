class Api::RoutesController < ApplicationController
  def create
    parameters = {
      start_location_id: Location.find_by(name: params[:input_from]).id,
      end_location_id: Location.find_by(name: params[:input_to]).id
    #   start_location_id: params[:start_location_id],
    #   end_location_id: params[:end_location_id],
    #   total_distance: Location.find(:start_location_id).distance_from("#{Location.find(:end_location_id).name}"),
    #   total_time: total_distance * 60 # a leaugue is how long one can walk in an hour
    }
    route_steps = find_route(parameters[:start_location_id], parameters[:end_location_id])[:route]
    # p "*" * 50
    # p @journey
    # p "*" * 50
    @route = Route.new(parameters)
    @route.save
    i = 0
    route_steps.each do |step|
      route_step = RouteStep.new(
        route_id: @route.id,
        route_segment_id: step,
        order_index: i
        )
      route_step.save
      i += 1
    end
    @steps = []
    @route.route_steps.each do |step|
      @steps[step.order_index] = step.route_segment_id
    end
    render "show.json.jbuilder"
  end

  def show
    @route = Route.last
    render "show.json.jbuilder"
  end
end
