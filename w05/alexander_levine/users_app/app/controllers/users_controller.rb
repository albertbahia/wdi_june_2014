class UsersController < ApplicationController

  before_action :authorize, only: [:update, :edit, :destroy]

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
      render(:new)
    end
  end

  def show

  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update
      redirect_to users_path
    else
      render(:edit)
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    session[:current_user] = nil
      redirect_to(users_path)
  end

  def user_params
    params.require(:user).permit(:username, :first_name, :last_name,
    :password, :password_confirmation)
  end

end
