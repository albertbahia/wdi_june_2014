class TweedsController < ApplicationController

  def index
    @tweeds = Tweed.order(timestamp: :desc)
  end

  def new
  end

  def show
    @tweed = Tweed.find(params[:id])
  end

  def edit
    @tweed = Tweed.find(params[:id])
  end

  def create
    tweed = Tweed.create!(params[:tweed].permit!)
    redirect_to("/tweeds/#{tweed.id}")
  end

  def update
    tweed = Tweed.find(params[:id])
    tweed.update!(params[:tweed].permit!)
    redirect_to("/tweeds/#{tweed.id}")
  end

  def delete
    Tweed.find(params[:id]).destroy
    redirect_to("/tweeds")
  end

  def tweed_params
    params.require(:tweed).permit(:author, :content, :image_url)
  end
end
