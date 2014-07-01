
class SongController < ApplicationController


  def index
    @songs = Song.all
  end

  def new

  end

  def create
    @song = Song.create!(params[:song])
    redirect_to("/songs/#{@song.id}")
  end

  def show
    @song = Song.find(params[:id])
  end

  def edit
    @song = Song.find(params[:id])
  end

  def update
    @song = Song.update!(params[:song])
    redirect_to("/songs/#{@song.id}")
  end

  def destroy
    @song = Song.find(params[:id])
    redirect_to("songs/")
  end

end
