class UsersController < ApplicationController
  respond_to :json

  def index
  end

  def show
  end

  def mobile
    @user = User.find_by(uid: params[:user_id].to_i)
    @user = User.create!(uid: params[:user_id].to_i) if !@user
    @loc = Location.find_by(id: params[:location_id])
    if !@user.locations.include?(@loc) && @loc
      @user.locations << @loc
    end
    @locs = @user.locations
    @response = @locs.inject({}) {|resp,loc|
      resp[loc.id.to_s] = loc.name
      resp
    }
    render json: @response
  end
end
