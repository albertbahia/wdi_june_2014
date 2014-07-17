class TweedsController < ApplicationController

  def index
    @tweeds = Tweed.order(timestamp: :desc)
  end

  def new
    @tweed = Tweed.new
  end

  def show
    @tweed = Tweed.find(params[:id])
  end

  def edit
    @tweed = Tweed.find(params[:id])
  end

  def create
    tweed = Tweed.new(tweed_params)
    tweed.timestamp = Time.now
    tweed.save
    redirect_to(tweed_path(tweed))
  end

  def update
    tweed = Tweed.find(params[:id])
    tweed.update!(tweed_params)
    redirect_to(tweed_path(tweed))
  end

  def delete
    Tweed.find(params[:id]).destroy
    redirect_to(tweeds_path)
  end

  def tweed_params
    params.require(:tweed).permit(:author, :content, :image_url)
  end
end
