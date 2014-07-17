class ActorsController < ApplicationController

  def index
    @actors = Actor.all
  end

  def new
    @actor = Actor.new
    @movies = Movie.all
  end

  def create
    @actor = Actor.new(actor_params)

    if params[:actor][:photo_url] == ""
      @actor.photo_url = "http://www.homeprojecthq.com/upload_images/No_Image_Available.gif"
    end

    if @actor.save
      @actor.movies << Movie.find(params[:movie_id])
      redirect_to(actor_path(@actor))
    else
      render :new
    end
  end

  def show
    @actor = Actor.find(params[:id])
  end

  def edit
    @actor = Actor.find(params[:id])
    @movies = Movie.all
  end

  def update
    @actor = Actor.find(params[:id])

    if params[:actor][:photo_url] == ""
      params[:actor][:photo_url] = "http://www.homeprojecthq.com/upload_images/No_Image_Available.gif"
    end

    if @actor.update(params[:actor].permit(:name, :photo_url))
      redirect_to(actor_path(@actor))
    else
      render :edit
    end
  end

  def destroy
    Actor.find(params[:id]).destroy
    redirect_to(actors_path)
  end

  def actor_params
    params.require(:actor).permit(:name, :photo_url, :movie_id)
  end
end
