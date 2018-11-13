class Api::RouteSegmentsController < ApplicationController
  def index
    @route_segments = RouteSegment.all
    render 'index.json.jbuilder'
  end
end
