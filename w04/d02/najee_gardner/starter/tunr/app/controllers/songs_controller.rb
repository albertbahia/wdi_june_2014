class SongsController < ApplicationController

  def index
    @songs = Song.all
  end

  def new
    @song = Song.new
  end

  def search
    @search_results = Itunes.search(:query)
  end

  def create
    @song = Song.create!(song_params)
    redirect_to(song_path(@song))
  end

  def show
    @song = Song.find(params[:id])
  end

  def edit
    @song = Song.find(params[:id])
  end

  def update
    @song = Song.find(params[:id])
    @song.update!(song_params)
    redirect_to(song_path(@song))
  end

  def destroy
    @song = Song.find(params[:id])
    @song.destroy
    redirect_to(songs_path)
  end

  def song_params
    params.require(:song).permit(:title, :album, :preview_url, :artist_id, :price)
  end

end
