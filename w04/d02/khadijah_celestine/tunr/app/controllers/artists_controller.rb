class ArtistsController < ApplicationController

  def index
    @artists = Artist.all
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.create!(artist_params)
    redirect_to(artist_path(@artist)) #better to pass the whole object?
  end

  # job: return a whitelisted set of attributes
  def artist_params
    params.require(:artist).permit(:name, :photo_url, :nationality)
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def update
    @artist = Artist.find(params[:id])
    @artist.update!(params[:artist].permit!)
    redirect_to(artist_path(@artist))
  end

  def destroy
    @artist = Artist.find(params[:id])
    @artist.destroy
    redirect_to(artists_path(@artist))
  end

end
