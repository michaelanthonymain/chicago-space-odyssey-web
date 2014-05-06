class UsersController < ApplicationController
  respond_to :json

  def index
  end

  def show
  end

  def mobile
    @user = User.where(uid: params[:uid]).first
    @user = User.create!(uid: params[:uid].to_i) if !@user
    if !@user.locations.include?(Location.find(params[:location_id]))
      @user.locations << Location.find(params[:location_id])
    end
    @locs = @user.locations
    @response = @locs.inject({}) {|resp,loc|
      resp[loc.id.to_s] = loc.name
      resp
    }
    render json: @response
  end
end
