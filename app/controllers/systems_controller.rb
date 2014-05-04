class SystemsController < ApplicationController
  def show
    @system = System.find(params[:id])
    respond_to do |format|
      format.js
    end
  end

  def all
    @systems = {}
    Location.all.each do |loc|
      @systems[loc.id] = loc.system
    end
    render json: @systems
  end
end
