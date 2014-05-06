class SessionsController < ApplicationController
  def create
    auth = request.env['omniauth.auth']
    user = User.find_by(uid: auth["uid"].to_i) || User.create_with_omniauth(auth)
    user.update_info(auth) if !user.username
    session[:user_id] = user.id
    redirect_to root_path
  end

  def destroy
    session.clear
    redirect_to root_path
  end
end
