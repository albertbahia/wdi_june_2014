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
      redirect_to movie_path(@movie)
    else
      render(:new)
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
    if @movie.update!(movie_params)
      redirect_to movie_path(@movie)
    else
      render(:edit)
    end
  end

  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
    redirect_to movies_path
  end

  def search
    @results = OMDB.search_by_title(params[:search])
  end

  def add_new
    new_movie = OMDB.search_by_id(params[:omdb_id_number])
    @movie = Movie.find_or_create_by(new_movie.first)
    redirect_to movie_path(@movie)
  end

  private

  def movie_params
    params.require(:movie).permit(:title,:poster_url,:year,:plot)
  end
end
