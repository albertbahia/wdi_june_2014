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
    @playlist = Playlist.create!(playlists_params)
    redirect_to(playlist_path(@playlist))
  end

  def add_song
    @playlist = Playlist.find(params[:id])
    @playlist.songs << Song.find(params[:song_id])
    redirect_to(add_song_to_playlist_path(@playlist))
  end

  def remove_song
    @playlist = Playlist.find(params[:id])
    @playlist.songs.delete(Song.find(params[:song_id]))
    redirect_to(remove_song_from_playlist_path(@playlist))
  end

  private
  def playlists_params
    params.require(:playlist).permit(:name)
  end

end
