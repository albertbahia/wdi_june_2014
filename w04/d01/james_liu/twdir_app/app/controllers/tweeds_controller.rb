class TweedsController < ApplicationController

  def index
    @tweeds = Tweed.all
  end

  def new
  end

  def create
    @tweed = Tweed.create!(params[:tweed])
    redirect_to ("/tweeds/#{@tweeds.id}")
  end

  def show
    @tweed = Tweed.find(params[:id])
  end

  def edit
    @tweed = Tweed.find(params[:id])
  end

  def update
    @tweed = Tweed.find(params[:id])
    @tweed.update(params[:tweed].permit!)
    redirect_to "/tweeds/#{@tweeds.id}"
  end

  def destroy
    @tweed = Tweed.find(params[:id])
    @tweed.destroy
    redirect_to "/tweeds"
  end

end

# Define the Seven Deadly Routes for your app. Each of the routes should be directed towards an action on your controller.

# User Stories

# As a user I want see all of the posted tweeds on the homepage, so that I can browse quickly and easily.
# As a user I want to be able to view an individual tweed, so that I can focus on one entry.
# As a user I want to be able to post a new tweed, so that I can share my thoughts with my friends.
# As a user I want to be able to edit a tweed, so that I can fix a mistake I made.
# As a user I want to be able to delete a tweed, so that future employers will not know what I did that one night.