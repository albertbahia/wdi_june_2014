class MoviesController < ApplicationController

  # Seven Restful Routes

  def index
    @movies = Movie.all
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)
    if @movie.save
      redirect_to(movie_path(@movie))
    else
      render :new
    end
  end

  def search
    @search_results = OMDB.search(params[:search_term])
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    @movie = Movie.find(params[:id])
    if @movie.update(movie_params)
      redirect_to(movie_path)
    else
      render :edit
    end
  end

  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
    redirect_to(movies_path)
  end

  private
  def movie_params
    params.require(:movie).permit(:title, :year, :poster_url, :plot)
  end

end
