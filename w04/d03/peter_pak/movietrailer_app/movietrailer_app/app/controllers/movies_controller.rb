class MoviesController < ApplicationController

  def index
    @movies = Movie.all
  end

  def new
    @movies = Movie.new

  end

  def show
    @movies = Movie.find(params[:id])
    @trailer = Trailer.where(movie_id: @movies)
  end

  def create
    @movies = Movie.new(movie_params)
    if @movies.save
      redirect_to(movie_path(@movies))
    else
      render(:new)
    end
  end

  def edit
    @movies = Movie.find(params[:id])
  end

  def update
    @movies = Movie.find(params[:id])
    if @movies.save(movie_params)
      redirect_to(movie_path(@movies))
    else
      render(:edit)
    end
  end

  def destroy
    @movies = Movie.find(params[:id])
    @movie.destroy
    redirect_to(movies_path)
  end

  def search
  end

  def results
    term = params[:search]
    @search = Omdb.search(term)
    @movies = Movie.new(params[:movies])
  end

  private
  def movie_params
    params.require(:movie).permit(:title, :year, :poster_url, :plot)
  end

end
