class PlaylistsController < ApplicationController

  def index
    @playlists = Playlist.all
  end

  def new
    @playlist = Playlist.new
  end

  def create
    @playlist = Playlist.create(playlist_params)
    if @playlist.save
      redirect_to(playlist_path(@playlist))
    else
      render(:new)
    end
  end

  def show
    @playlist = Playlist.find(params[:id])
  end

  def edit
    @playlist = Playlist.find(params[:id])
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
    @playlist = Playlist.find(params[:id])
    @playlist.delete(Song.find(params[:song_id]))
    redirect_to("/playlists")
  end

  def playlist_params
    params.require(:playlist).permit(:name)
  end

end
