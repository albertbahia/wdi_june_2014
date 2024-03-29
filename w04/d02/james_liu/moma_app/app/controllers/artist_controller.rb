class Artist < ApplicationController

  def index
    @artists = Artist.all
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.create!(artist_params)
    redirect_to(artist_path(@artist))
  end

  def show
    @artist = artist.find(params[:id])
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def update
    @artist = Artist.find(params[:id])
    @artist = Artist.update!(artist_params)
    redirect_to(artist_path(@artist))
  end

  def destroy
    @artist = Artist.find(params[:id])
    @artist.destroy
    redirect_to(artists_path)
  end


  private
  def artist_params
    params.require(:artist).permit(:name, :photo_url, :nationality, :birthday)
  end