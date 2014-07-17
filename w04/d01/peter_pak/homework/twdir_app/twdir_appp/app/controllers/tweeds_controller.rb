class TweedsController < ApplicationController

  def index
    @tweeds = Tweed.order('created_at DESC').all
  end

  def new
    @tweeds = Tweed.new

  end

  def create
    @tweeds = Tweed.create!(tweed_params)
    redirect_to(tweed_path(@tweeds))
  end

  def show
    @tweeds = Tweed.find(params[:id])
  end

  def edit
    @tweeds = Tweed.find(params[:id])
  end

  def update
    @tweeds = Tweed.find(params[:id])
    @tweeds.update!(tweed_params)
    redirect_to(tweed_path(@tweeds))
  end

  def destroy
    @tweeds = Tweed.find(params[:id])
    @tweeds.destroy
    redirect_to(tweeds_path)
  end


  private
  def tweed_params
    params.require(:tweed).permit(:author, :content, :image_url)
  end



end
