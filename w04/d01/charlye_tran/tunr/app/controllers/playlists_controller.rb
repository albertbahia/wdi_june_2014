class PlaylistsController < ApplicationController

  def index
    @playlists = Playlist.all
  end

  def new
  end

  def create
    @playlist = Playlist.create(params[:playlist])
    redirect_to("/playlists/#{@playlist.id}")
  end

  def show
    @playlist = Playlist.find(params[:id])
  end

  def edit
    @playlist = Playlist.find(params[:id])
  end

  def update
    @playlist = Playlist.find(params[:id])
    @playlist.update(params[:playlist].permit!)
    redirect_to("/playlists/#{@playlist.id}")
  end

  def destroy
    @playlist = Playlist.find(params[:id])
    @playlist.destroy
    redirect_to("/playlists")
  end

  # add song
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

end
