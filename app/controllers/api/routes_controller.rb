class Api::RoutesController < ApplicationController
  def create
    start_location = Location.find_by(name: params[:input_from]) || Location.find(Synonym.find_by(name: params[:input_from]).location_id)
    end_location = Location.find_by(name: params[:input_to]) || Location.find(Synonym.find_by(name: params[:input_to]).location_id)
    parameters = {
      start_location_id: start_location.id,
      end_location_id: end_location.id
    }
    @route = Route.find_by(parameters)
    if !@route
      route_steps = find_route(parameters[:start_location_id], parameters[:end_location_id])[:route]
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
    end
    @steps = []
    @route.route_steps.each do |step|
      @steps[step.order_index] = step.route_segment_id
    end
    10.times do
      p "*" * 88
    end
    p @route
    render "show.json.jbuilder"
  end

  def show
    p params
    @route = Route.find_by(start_location_id: params[:start_id], end_location_id: params[:end_id])
    render "show.json.jbuilder"
  end
end
