class SongsController < ApplicationController

  def index
    @song = Song.all
  end

  def new
    @song = Song.new
    @artists = Artist.all
  end

  def search
    @artists = Artist.all
    search_term = params[:search]
    @api_call = Itunes.song_search(search_term)
  end

  def create
    @artists = Artist.all
    @song = Song.new(song_params)
    if @song.save
      redirect_to(song_path(@song))
    else
      render(:new)
    end
  end

  def show
    @song = Song.find(params[:id])
  end

  def edit
    @song = Song.find(params[:id])
  end

  def update
    @song = Song.find(params[:id])
    if @song.update(song_params)
      redirect_to(song_path(@song))
    else
      render(:edit)
    end
  end

  def destroy
    @song = Song.find(params[:id])
    @song.destroy
    redirect_to(songs_path)
  end

  private
  def song_params
    params.require(:song).permit(:title, :album, :preview_url, :price, :artist_id)
  end

end
