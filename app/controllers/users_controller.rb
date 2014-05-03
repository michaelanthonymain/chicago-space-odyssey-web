class UsersController < ApplicationController
  # respond_to :json

  def index
  end

  def show
  end

  def locations
    # # Once we start sending twitter UIDs to identify users, we need to change this
    @locs = User.find_by(id: params[:uid]).locations
    @response = {}
    @locs.each do |loc|
      @response[loc.id.to_s] = loc.name
    end
    render :json => @response
  end
end
