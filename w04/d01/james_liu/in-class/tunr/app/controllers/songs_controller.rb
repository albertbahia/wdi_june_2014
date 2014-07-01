class SongsController < ApplicationController

  def index  
    @songs = Song.all
  end

  def new
  end

  def create
    @song = Song.create!(params[:song])
    redirect("/songs/#{@song.id}")
  end

  def show
    @song = Song.find(params[:id])
  end

  def edit
    @song  = Song.find(params[:id])
  end

  def update
    @song  = Song.find(params[:id])
    @song = Song.update(params[:song].permit!)
    redirect("/songs/#{@song.id}")
  end

  def destroy
    @song = Song.find(params[:id])
    @song.destroy
    redirect_to("/artists")
  end

end