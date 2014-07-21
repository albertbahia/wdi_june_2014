class UsersController < ApplicationController
  before_action :authenticate, only: [:new, :create, :edit, :update, :destroy]
  before_action :authorize, only: [:edit, :update, :destroy]

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to(users_path)
    else
      render :new
    end
  end

  def edit
    @user = User.find(params[:id])
    if @user.id == session[:id]
      redirect_to users_path
    end
  end

  def update
    @user = User.find(params[:id])

    if @user.id == session[:id]
      if @user.update(user_params)
        redirect_to users_path
      else
        render :edit
      end
    end
    redirect_to users_path
  end

  def destroy
    session[:id] = nil
    user = User.find(params[:id]).destroy

  end

  def user_params
    params.require(:user).permit(:username, :first_name, :last_name, :password, :password_confirmation)
  end
end
