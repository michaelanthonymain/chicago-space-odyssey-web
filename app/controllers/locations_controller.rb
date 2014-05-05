class LocationsController < ApplicationController
  respond_to :json

  def system
    @loc = Location.find(params[:id])
    @system = @loc.system
    @location = {:location => @loc, :system => @system}
    render json: @location
  end

  def collections
    @loc = Location.find(params[:id])
    @colls = @loc.collections
    render json: @colls
  end
end
