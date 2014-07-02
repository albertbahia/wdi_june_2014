class PlaylistsController < ApplicationController
  def index
    @playlists = Playlist.all
  end

  def new
    @playlist = Playlist.new
  end

  def show
    @playlist = Playlist.find(params[:id])
  end

  def create
    @playlist = Playlist.create!(playlist_params)
    redirect_to(playlists_path(@playlist))
  end

  def add_song
    @playlist = Playlist.find(params[:id])
    @playlist.songs << Song.find(params[:song_id])
    redirect_to(playlists_path(@playlist))
  end

  def remove_song
    @playlist = Playlist.find(params[:id])
    @playlist.songs.delete(Song.find(params[:song_id]))
    redirect_to(playlists_path(@playlist))
  end

  def playlist_params
    params.require(:playlist).permit(:song_id, :playlist_id)
  end

end
