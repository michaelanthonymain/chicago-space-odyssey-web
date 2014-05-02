class LocationsController < ApplicationController
  respond_to :json

  def show
    @loc = Location.find(params[:id])
    @system = @loc.system
    @location = {:location => @loc, :system => @system}
    respond_with @location
  end
end
