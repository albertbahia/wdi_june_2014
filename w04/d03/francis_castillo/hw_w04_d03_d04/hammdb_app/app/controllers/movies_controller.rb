class MoviesController < ApplicationController

  def index
    @movies = Movie.all
  end

  def new
    @movie = Movie.new
  end

  def show
  end

  def create

  end

  def update

  end

  def edit


  end

  def destroy

  end
end
