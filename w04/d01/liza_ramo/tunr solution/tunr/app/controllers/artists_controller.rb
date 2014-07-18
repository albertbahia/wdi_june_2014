class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
  end

  def new
  end

  def create
    @artist = Artist.create!(params[:artist])
    redirect_to("/artists/#{@artist.id}")
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def update
    @artist = Artist.update!(params[:artist])
    redirect_to("/artists/#{@artist.id}")
  end

  def destroy
    @artist = Artist.find(params[:id])
    @artist.destroy
    redirect_to("/artists")
  end

end
