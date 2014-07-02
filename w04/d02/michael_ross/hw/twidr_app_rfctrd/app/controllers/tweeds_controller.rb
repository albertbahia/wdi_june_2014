class TweedsController < ApplicationController

  #index
  def index
    @tweeds = Tweed.all
  end

  # new
  def new
    @tweed = Tweed.new
  end

  # create
  def create
    @tweed = Tweed.create!(tweed_params)
    redirect_to(tweed_path(@tweed))
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
    @tweed.update!(tweed_params)
    redirect_to(tweed_path(@tweed))
  end

  #destroy
  def destroy
    @tweed = Tweed.find(params[:id])
    @tweed.destroy
    redirect_to(tweeds_path)
  end

  private
  def tweed_params
    params.require(:tweed).permit(:author, :image_url, :content)
  end

end
