class SongsController < ApplicationController

  # index
  def index
    @songs = Song.all
  end

  # new
  def new
  end

  # create
  def create
    @song = Song.create!(params[:artist].permit!)
    redirect_to("/songs/#{@song.id}")
  end

  #show
  def show
    @song = Song.find(params[:id])
  end

  # edit
  def edit
    @song = Song.find(params[:id])
  end

  # update
  def update
    @song = Song.find(params[:id])
    @song.update(params[:song].permit!)
    # @song = Song.update!(params[:song].permit!)
    redirect_to("/songs/#{@song.id}")
  end

  # destroy
  def destroy
    @song = Song.find(params[:id])
    @song.destroy
    redirect_to("/songs")
  end
end
