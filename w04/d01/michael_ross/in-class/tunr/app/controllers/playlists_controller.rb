class PlaylistsController < ApplicationController

  # index
  def index
    @playlists = Playlist.all
  end

  # new
  def new
  end

  # create
  def create
    @playlist = Playlist.create!(params[:playlist].permit!)
    redirect_to("/playlists/#{@playlist.id}")
  end

  # show
  def show
    @playlist = Playlist.find(params[:id])
  end

  # add_song
  def add_song
    @playlist = Playlist.find(params[:id])
    @playlist.songs << Song.find(params[:song_id])
    redirect_to("/playlists/#{@playlist.id}")
  end

  # remove song
  def remove_song
    @playlist = Playlist.find(params[:id])
    @playlist.songs.delete(Song.find(params[:song_id]))
    redirect_to("/playlists/#{@playlist.id}")
  end

end
