class UsersController < ApplicationController
  # respond_to :json

  def index
  end

  def show
  end

  def locations
    @locs = User.find_by(uid: params[:uid]).locations
    @response = {}
    @locs.each do |loc|
      @response[loc.id.to_s] = loc.name
    end
    render :json => @response
  end
end
