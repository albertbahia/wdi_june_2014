class ArtistsController < ApplicationController

  def index
    @artist = Artist.all
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.create(params[:artist].permit)
    redirect(artist_path)
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
    redirect_to(artists_path)
  end
end
