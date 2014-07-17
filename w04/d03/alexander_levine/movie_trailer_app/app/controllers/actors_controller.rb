class ActorsController < ApplicationController

  def index
    @actors = Actor.all
  end

  def new
    @actor = Actor.new
  end

  def create
    @actor = Actor.new(actors_params)
    if @actor.save
      redirect_to(actor_path(@actor))
    else
      render(:new)
    end
  end

  def show
    @actor = Actor.find(params[:id])
  end

  def edit
    @actor = Actor.find(params[:id])
  end

  def update
    @actor = Actor.find(params[:id])
    if @actor.update(actors_params)
      redirect_to(actor_path(@actor))
    else
      render(:edit)
    end
  end

  def destroy
    @actor = Actor.find(params[:id])
    @actor.destroy
  end

  def actors_params
    params.require(:actors).permit(:name, :photo_url, :movie_id)
  end

end