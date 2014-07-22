class MoviesController < ApplicationController

  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)
    if @movie.save
      redirect_to(new_movie_trailer_path(@new_movie))
    else
      render :new
    end
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    @movie = Movie.find(params[:id])
    if @movie.update(movie_params)
      redirect_to(movie_path(@movie))
    else
      render :edit
    end
  end

  def destroy
    @movie = Movie.find(params[:id])
    if @movie.destroy
      redirect_to movies_path
    else
      redirect_to movie_path(@movie)
    end
  end

  def search
    @results = Omdb.search_by_title(params[:search])
  end

  def add_new
    new_movie = OMDB.search_by_id(params[:omdb_id_number])
    @movie = Movie.find_or_create_by(new_movie.first)
    new_movie.last.each do |actor|
      actor = Actor.create_with(photo_url: 'http://placekitten.com/300/300').find_or_create_by(name: actor)
      @movie.actors << actor
    end
    redirect_to movie_path(@movie)
  end

  private
  def movie_params
    params.require(:movie).permit(:title, :year, :poster_url, :plot)
  end

end
