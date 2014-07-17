class TrailersController < ApplicationController


  def index
    @movies = Movie.find(params[:id])
  end

  def new
    @trailers = Trailer.new
    @movies = Movie.all
  end

  def create
    @trailers = Trailer.new(trailer_params)
    if @trailers.save
      redirect_to(movie_trailer_path(@movies, @trailers))
    else
      render(:new)
    end
  end

  def show
    @trailers = Trailer.find(params[:id])
  end

  private

  def trailer_params
    params.require(:trailer).permit(:title, :embed_url, :movie_id)
  end
end
