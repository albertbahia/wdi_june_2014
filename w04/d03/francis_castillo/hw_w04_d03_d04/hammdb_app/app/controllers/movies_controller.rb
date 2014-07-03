class MoviesController < ApplicationController

  def index
    @movies = Movie.all
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = movie.new(movie_params)
  end

  def show
    @movie = movie.find(params[:id])
  end

  def update

  end

  def edit


  end

  def destroy

  end

  private
  def movie_params
    params.require(:movie).permit(:title, :year, :poster_url, :plot)
  end
end
