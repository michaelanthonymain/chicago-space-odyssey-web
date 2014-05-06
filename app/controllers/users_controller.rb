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

  def mobile
    @user = User.where(uid: params[:user_id]).first
    @user = User.create!(uid: params[:user_id].to_i) if !@user && params[:user_id]
    @user.locations << Location.find(params[:location_id].to_i) if params[:location_id]
  end
end
