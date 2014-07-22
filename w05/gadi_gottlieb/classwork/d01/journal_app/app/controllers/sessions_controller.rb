class SessionsController < ApplicationController

  # Login Form
  def new
  end
  #
  def create
    # params[:username]
    # params[:password]

    # Find the user with that username
    user = User.find_by(username: params[:username])

    # Authenticate that user


    # Remember the fact that the user has been authenticated
    if user.authenticate(params[:password])
      session[:current_user] = user.id
      redirect_to user_path
    else
      redirect_to login_path
    end
  end
  # Logout Form
  def destroy
    session[:currect_user] = nil
    redirect_to login_path
  end


end
