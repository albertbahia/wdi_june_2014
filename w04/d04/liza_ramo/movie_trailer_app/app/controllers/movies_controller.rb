class MoviesController < ApplicationController
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
      redirect_to new_movie_path
    end
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
      redirect_to(movie_path(@movie))
    else
      redirect_to edit_movie_path(@movie)
    end
  end

  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
    redirect_to(movies_path)
  end

  def search
    @movie = Movie.new
    search_term = params[:search]
    @search_results = OMDB.search(search_term)
  end

  private
  # Only permitting these attributes to come in through forms:
  def movie_params
    params.require(:movie).permit(:title, :poster_url, :year, :plot)
  end

end
