class TweedsController < ApplicationController

#index
  def index
    @tweeds = Tweed.all
  end

#new
  def new
  end

#create
  def create
    @tweed = Tweed.create!(params[:tweed].permit!)
    redirect_to(tweeds_path(@tweed))
  end

#show
  def show
    @tweed = Tweed.find(params[:id])
  end

#edit
  def edit
    @tweed = Tweed.find(params[:id])
  end

#update
  def update
    @tweed = Tweed.update(params[:id], params[:tweed].permit!)
    redirect_to(tweeds_path(@tweed))
  end

#destroy
  def destroy
    Tweed.destroy(params[:id])
    redirect_to(tweeds_path)
  end

end
