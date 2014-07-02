class ArtistsController < ApplicationController

  def index
    @artists = Artist.all
  end

  def new
    @artists = Artist.new
  end

  def create
    @artists = Artist.create!(artist_params)
    redirect_to(artist_path(@artists))
  end

  def show
    @artists = Artist.find(params[:id])
  end

  def edit
    @artists = Artist.find(params[:id])
  end

  def update
    @artists = Artist.find(params[:id])
    @artists.update(artist_params)
    redirect_to(artist_path(@artists))
  end

  def destroy
    @artists = Artist.find(params[:id])
    @artists.destroy
    redirect_to(artists_path)
  end

  private
  def artist_params
    params.require(:artist).permit(:name, :photo_url, :nationality, :birthday)
  end

end
