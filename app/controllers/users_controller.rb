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
    @user = User.where(uid: params[:uid]).first
    @user = User.create!(uid: params[:uid].to_i) if !@user
    @user.locations << Location.find(params[:location_id].to_i) if params[:location_id]
  end
end
