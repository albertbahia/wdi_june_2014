class SessionsController < ApplicationController

  def new

  end

  def create
    # params[:username]
    # params[:password]

    #Need to find the user with that username
    user = User.find_by(username: params[:username])

    # Authenticate that user


    #Remember the fact that the user has been authenticated
      if user.authenticate(params[:password])
        session[:current_user] = user.id
        redirect_to users_path
      else
        redirect_to login_path  #or render: new
      end

  end

  def destroy

  end


end
