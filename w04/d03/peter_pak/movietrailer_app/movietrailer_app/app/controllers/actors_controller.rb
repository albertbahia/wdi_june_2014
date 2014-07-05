class ActorsController < ApplicationController

  def index
    @actors = Actor.all
  end

  def new
    @actors = Actor.new
    @movies = Movie.all
  end

  def show
    @actors = Actor.find(params[:id])
    @movie = Movie.find(@actors.movie_id)
  end

  def create
    @actors = Actor.new(actor_params)
      if @actors.save
        redirect_to(actor_path(@actors))
      else
        render(:new)
      end
  end

  def edit
    @actors = Actor.find(params[:id])
    @movie = Movie.all
  end

  def update
    @actors = Actor.find(params[:id])
    if @actors.update(actor_params)
      redirect_to(actor_path(@actors))
    else
      render(:new)
    end
  end

  def destroy
    @actors = Actor.find(params[:id])
    @actors.destroy
    redirect_to(movies_path)
  end

  private
  def actor_params
    params.require(:actor).permit(:name, :photo_url, :movie_id)
  end
end
