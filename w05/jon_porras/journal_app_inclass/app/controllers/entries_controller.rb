class EntriesController < ApplicationController

  before_action :authenticate, only: [:new, :create]

  def index
    @entries = Entry.all
  end

  def new
      @entry = Entry.new
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

  def edit
    @entry = Entry.find(params[:id])
  end

  def update
    @entry = Entry.find(params[:id])
    @entry.user_id = session[:current_user]
    if @entry.update(entry_params)
      redirect_to entry_path(@entry)
    else
      render :edit
    end
  end

  def destroy
    @entry = Entry.find(params[:id])
    @entry.destroy
    redirect_to entries_path
  end

  private
  def entry_params
    params.require(:entry).permit(:title, :content)
  end

end
