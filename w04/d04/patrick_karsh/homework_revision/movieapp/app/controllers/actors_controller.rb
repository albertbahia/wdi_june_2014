class ActorsController < ApplicationController

  def index
    @movie = Movie.find(params[:movie_id])
    @actors = @movie.actors
  end
  def show
    @movie = Movie.find(params[:movie_id])
    @actor = Actor.find(params[:id])
  end
  def new
    @actor = Actor.new
    @movie = Movie.find(params[:movie_id])
  end
  def create
    @movie = Movie.find(params[:movie_id]).actors
    @actor = Actor.create(actor_params)
    @movie.push(@actor)
    redirect_to movie_actors_path(params[:movie_id])
  end
  def edit
    @actor = Actor.find(params[:id])
    @movie = Movie.find(params[:movie_id])
  end
  def update
    @actor = Actor.find(params[:id])
    @actor.update(actor_params)
    redirect_to movie_actors_path(params[:movie_id])
  end
  def destroy
    @actor = Actor.find(params[:id])
    @actor.destroy
    redirect_to movie_path(params[:movie_id])
  end

  private
  def actor_params
    params.require(:actor).permit(:name, :photo_url)
  end
end 