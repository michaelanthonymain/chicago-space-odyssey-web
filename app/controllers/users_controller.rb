class UsersController < ApplicationController
  respond_to :json

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
    respond_with @response
  end

  def mobile
    @user = User.create_or_find_by(uid: params[:user_id])
    # @user = User.create!(uid: params[:user_id].to_i) if !@user && params[:user_id]
    @loc = Location.find(params[:location_id])
    @user.locations << @loc if !@user.locations.include?(@loc)
  end
end
