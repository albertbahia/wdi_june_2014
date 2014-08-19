class SessionsController < ApplicationController

  # Display login form - username & password
  def new
  end

  # Validate login info & create session
  def create
    user = User.find_by(username: params[:username])
      if user.authenticate(params[:password])
        session[:current_user] = user.id
        redirect_to users_path
      else
        redirect_to login_path
      end
  end

  # Logout/end the session
  def destroy
    session[:current_user] = nil
    redirect_to login_path
  end

end
