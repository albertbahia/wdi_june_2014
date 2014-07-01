class TweedsController < ApplicationController

  #index
  def index
    @tweeds = Tweed.all
  end

  # new
  def new
  end

  # create
  def create
    @tweed = Tweed.create!(params[:tweed].permit!)
    redirect_to("/tweeds/#{@tweed.id}")
  end

  # show
  def show
    @tweed = Tweed.find(params[:id])
  end

  # edit
  def edit
    @tweed = Tweed.find(params[:id])
  end

  #update
  def update
    @tweed = Tweed.find(params[:id])
    @tweed.update!(params[:tweed].permit!)
    redirect_to("/tweeds/#{@tweed.id}")
  end

  #destroy
  def destroy
    @tweed = Tweed.find(params[:id])
    @tweed.destroy
    redirect_to("/tweeds")
  end


end
