class EntriesController < ApplicationController

  before_action :authenticate, only: [:new, :create, :edit, :update, :destroy]

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
        render(:new)
      end
  end

  def show
    @entry = Entry.find(params[:id])
  end

  def edit
    @entry = Entry.find(params[:id])
  end

  def update
    @entry = Entry.find(params[:id])
      if @entry.update(entry_params)
        redirect_to(entry_path(@entry))
      else
        render(:edit)
      end
  end

  def destroy
    @entry = Entry.find(params[:id])
    if session[:current_user] == @entry.user.id
      @entry.destroy
    end
      redirect_to(entries_path)
  end

  private
  def entry_params
    params.require(:entry).permit(:title, :content)
  end

end
