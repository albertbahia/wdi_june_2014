class SongsController < ApplicationController

  def index
    @songs = Song.all
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.create!(params[:song].permit!)
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
    @song.update!(params[:song].permit!)
    redirect_to(song_path(@song))
  end

  def destroy
    @song = Song.find(params[:id])
    @song.destroy
    redirect_to(songs_path)
  end

end
