class SongsController < ApplicationController

  def index
    @songs = Song.all
  end

  # new
  def new
  end

  # create
  def create
    if params[:song][:artist_id].to_i == 0
      artist = Artist.find_by({name: params[:song][:artist_id]})
      if !artist
        artist = Artist.create({
          name: params[:song][:artist_id],
          nationality: params[:artist_country]
        })
      end
      params[:song][:artist_id] = artist.id
    end
    song = Song.where("title = '#{params[:song][:title]}' AND artist_id = '#{params[:song][:artist_id]}'")
    if !song.first
      song = [Song.create!(params[:song].permit!)]
    end

    redirect_to("/songs/#{song.first.id}")
  end

  #show
  def search
    search_term = params[:user_search]
    @search_songs = Itunes.search(search_term)
  end

  def show
    @song = Song.find(params[:id])
  end

  # edit
  def edit
    @song = Song.find(params[:id])
  end

  # update
  def update
    @song = Song.update!(params[:song])
    redirect_to("/songs/#{@song.id}")
  end

  # destroy
  def delete
    @song = Song.find(params[:id]).destroy
    redirect_to("/songs")
  end

end
