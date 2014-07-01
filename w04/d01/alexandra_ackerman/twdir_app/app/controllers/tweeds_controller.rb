class TweedsController < ApplicationController

  def index
    @tweeds = Tweed.all
  end

  def new
  end

  def create
    @tweed = Tweed.create!(params[:tweed].permit!)
    redirect_to("/tweeds/#{@tweed.id}")
  end

  def show
    @tweed = Tweed.find(params[:id])
  end

  def edit
    @tweed = Tweed.find(params[:id])
  end

  def update
    @tweed = Tweed.find(params[:id])
    @tweed.update!(params[:tweed].permit!)
    redirect_to("/tweeds/#{@tweed.id}")
  end

  def destroy
    @tweed = Tweed.find(params[:id])
    @tweed.destroy
    redirect_to("/tweeds")
  end

end
