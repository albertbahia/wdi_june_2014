class ActorsController < ApplicationController
  def index
    @actors = Actor.all
  end

  def new
    @actor = Actor.new
  end

  def create
    @actor = Actor.new(actor_params)

    if @actor.save
      redirect_to(actor_path(@actor))
    else
      redirect_to new_actor_path
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

    if @actor.update(actor_params)
      redirect_to(actor_path(@actor))
    else
      redirect_to edit_actor_path(@actor)
    end
  end

  def destroy
    @actor = Actor.find(params[:id])
    @actor.destroy
    redirect_to(actors_path)
  end

  private
  # Only permitting these attributes to come in through forms:
  def actor_params
    params.require(:actor).permit(:name, :photo_url)
  end

end
