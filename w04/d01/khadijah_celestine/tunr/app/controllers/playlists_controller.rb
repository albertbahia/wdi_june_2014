class PlaylistsController < ApplicationController

  def index
    @playlists = Playlist.all
  end

  def new
  end

  def create
    @playlist = Playlist.create!(params[:playlist])
    redirect_to("/playlists/#{@playlist.id}")
  end

  def show
    @playlist = Playlist.find(params[:id])
    @songs = @playlist.songs
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

end
