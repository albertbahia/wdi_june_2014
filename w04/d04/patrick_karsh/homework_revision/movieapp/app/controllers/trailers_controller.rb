class TrailersController < ApplicationController

  def index
    @movie = Movie.find(params[:movie_id])
    @trailers = @movie.trailers
  end
  def show
    @trailer = Trailer.find(params[:id])
    @movie = @trailer.movie
  end
  def new
    @trailer = Trailer.new
    @movie = Movie.find(params[:movie_id])
  end
  def create
    @trailer = Trailer.new(trailer_params)
    @trailer.movie_id = params[:movie_id]
    @trailer.save
    redirect_to movie_trailers_path(params[:movie_id])
  end
  def edit
    @trailer = Trailer.find(params[:id])    
    @movie = Movie.find(params[:movie_id])
  end
  def update
    @trailer = Trailer.find(params[:id])
    @trailer.update(trailer_params)
    redirect_to movie_trailer_path(@trailer.movie, @trailer)
  end
  def destroy
    @trailer = Trailer.find(params[:id])
    @trailer.destroy
    redirect_to movies_path
  end

private

  def trailer_params
    params.require(:trailer).permit(:embed_url,:title)
  end
end