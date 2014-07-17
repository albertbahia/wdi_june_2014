class TweedsController < ApplicationController
  def index
    @tweeds = Tweed.all
  end

  def new
    @tweeds = Tweed.all
  end

  def create
    @tweed = Tweed.new(tweed_params)
    redirect_to(tweed_path(@tweed))
  end

  def show
    @tweed = Tweed.find(params[:id])
  end

  def edit
    @tweed = Tweed.find(params[:id])
  end

  def update
    @tweet = Tweed.find(params[:id])
    @tweed = Tweed.update!(tweed_params)
    redirect_to(tweed_path(@tweed))
  end

  def destroy
    @tweed = Tweed.find(params[:id])
    @tweed.destroy
    redirect_to(tweeds_path)
  end

  private
  def tweed_params
    params.require(:tweed).permit(:author, :content, :image_url)
  end
  
end
