class Api::MapsController < ApplicationController
  def index
    @maps = Map.where(level: params[:level])
    render "index.json.jbuilder"
  end
end
