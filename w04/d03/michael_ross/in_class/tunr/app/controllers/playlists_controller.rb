class PlaylistsController < ApplicationController
  def index
    @playlists = Playlist.all
  end

  def new
  end

  def show
    @playlist = Playlist.find(params[:id])
  end

  def create
    @playlist = Playlist.new(playlist_params)
    if @playlist.save
      redirect_to("/playlists/#{@playlist.id}")
    else
      render :new
    end
  end

  def add_song
    @playlist = Playlist.find(params[:id])
    @playlist.songs << Song.find(params[:song_id])
    redirect_to("/playlists/#{@playlist.id}")
  end

  def remove_song
    @playlist = Playlist.find(params[:id])
    @playlist.songs.delete(Song.find(params[:song_id]))
    redirect_to("/playlists/#{@playlist.id}")
  end

  private
  def playlist_params
    params.require(:playlist).permit(:name)
  end

end
