class LoginsController < ApplicationController

  def index
    @params = params.to_s
  end

  def new
    @user = User.new
  end

  def create
    params.permit(:username, :password)
    user = User.new({
      username: params[:username],
      password: params[:password]
    })

    if user.save
      redirect_to 'https://www.facebook.com/dialog/oauth?client_id=305510936292740&redirect_uri=localhost:3000/logins'
    else
      render :new
    end
  end

  def login

  end

  def backlogin

  end
end
