class PlaylistsController < ApplicationController


  def index
    @playlists = Playlist.all
  end

  def show
    @playlist = Playlist.find(params[:id])
  end

  def new
  end

  def create
    playlist = Playlist.create!(params[:playlist])
    redirect_to(playlist_path(playlist))
  end

  def add_song
    @playlist = Playlist.find(params[:id])
    @playlist.songs << Song.find(params[:song_id])
    redirect_to(playlist_path(@playlist))
  end

  def remove_song
    @playlist = Playlist.find(params[:id])
    @playlist.songs.delete(Song.find(params[:song_id]))
    redirect_to(playlist_path(@playlist))
  end

  def destroy
    playlist = Playlist.find(params[:id])
    playlist.destroy
    redirect_to (playlists_path)
  end

end
