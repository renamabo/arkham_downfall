class SessionsController < ApplicationController

  def create
    user = User.find_by(username: params[:username].downcase)
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      
      redirect_to user_dashboard_path(user.id), notice: 'Successfully logged in!'
    else
      redirect_to root_path, alert: 'Unable to log in, please try again.'
    end
  end
    
end