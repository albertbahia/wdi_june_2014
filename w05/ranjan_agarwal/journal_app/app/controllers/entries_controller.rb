class EntriesController < ApplicationController

  before_action :authenticate, only: [:new, :create]

  def index
    @entries = Entry.all
  end

  def new
    @entry = Entry.new
  end

  def edit
    if session[:current_user] == params[:id].to_i
      @user = User.find(params[:id])
    else
      redirect_to users_path
    end
  end

  def update
    if session[:current_user] == params[:id].to_i
      @user = User.find(params[:id])
      if @user.update(users_params)
        redirect_to users_path
      else
        render :edit
      end
    else
      redirect_to users_path
    end
  end

  def create
    @entry = Entry.new(entry_params)
    @entry.user_id = session[:current_user]
    if @entry.save
      redirect_to entries_path
    else
      render :new
    end
  end

  private
  def entry_params
    params.require(:entry).permit(:title, :content)
  end


end
