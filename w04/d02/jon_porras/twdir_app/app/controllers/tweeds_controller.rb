class TweedsController < ApplicationController

  def index
    @tweeds = Tweed.all
  end

  def new
    @tweed = Tweed.new
  end

  def create
    @tweed = Tweed.create!(params[:tweed].permit!)
    redirect_to(tweed_path(@tweed))

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
    redirect_to(tweed_path(@tweed))

  end

  def destroy
    @tweed = Tweed.find(params[:id])
    @tweed.destroy
    redirect_to(tweeds_path)
  end

end
