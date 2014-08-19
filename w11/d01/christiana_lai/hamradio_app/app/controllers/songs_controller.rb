class SongsController < ApplicationController
  def index
    @songs = Song.all
    render status: 200, json: @songs.to_json
  end

  def show
    @song = Song.find(params[:id])
    render status: 200, json: @song.to_json
  end

  def create
    @song = Song.new(params[:id])
    if @song.save
      render status: 200, json: @song.to_json
    end
  end

  def update
    @song = Song.find(params[:id])
    if @song.update(song_params)
      render status: 200, json: @song.to_json
    end
  end

  def destroy
    @song = Song.find(params[:id])
    if @song.destroy
      render status: 200, json: @song.to_json
    end
  end

  private
  def song_params
    params.require(:song).permit(:title, :audio_url, :album_art, :artist, :genre)
  end
end
