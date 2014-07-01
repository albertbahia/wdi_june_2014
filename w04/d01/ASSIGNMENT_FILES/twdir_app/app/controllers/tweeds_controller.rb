class TweedsController < ApplicationController

  def index
    @tweeds = Tweed.all
  end

  def show
    @tweed = Tweed.find(params[:id])
  end

  def new
  end

  def create
    binding.pry
    @tweed = Tweed.create(params[:tweed].permit!)
    redirect_to "/tweeds/#{@tweed.id}"
  end

  def edit
    @tweed = Tweed.find(params[:id])  
  end

  def update
    @tweed = Tweed.update(params[:id], params[:tweed].permit!)
    redirect_to "/tweeds/#{@tweed.id}"
  end

  def destroy
    Tweed.destroy(params[:id])
    redirect_to '/'
  end

end