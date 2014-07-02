class TweedsController < ApplicationController
  def index
    @tweeds = Tweed.all
  end

  def new
    @tweed = Tweed.new
  end

  def create
    @tweed = Tweed.create!(tweed_params)
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
    @tweed.update!(tweed_params)
    redirect_to(tweed_path(@tweed))
  end

  def destroy
    @tweed = Tweed.find(params[:id])
    @tweed.destroy
    redirect_to(tweeds_path)
  end

  def tweed_params
    params.require(:tweed).permit(:content, :author, :img_url)
  end

end
