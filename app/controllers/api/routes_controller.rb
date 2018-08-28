class Api::RoutesController < ApplicationController
  def create
    start_location = Location.find_by(name: params[:input_from]) || Location.find(Synonym.find_by(name: params[:input_from]).location_id)
    p "*" *50
    p start_location
    p "*" *50
    end_location = Location.find_by(name: params[:input_to]) || Location.find(Synonym.find_by(name: params[:input_to]).location_id)
    parameters = {
      start_location_id: start_location.id,
      end_location_id: end_location.id
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
