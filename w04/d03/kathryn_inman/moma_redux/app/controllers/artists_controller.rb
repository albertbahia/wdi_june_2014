class ArtistsController < ApplicationController

# index
def index
  @artists = Artist.all
end

# new
def new
  @artist = Artist.new
end

# create
def create
  @artist = Artist.create(params[:artist].permit!)
  redirect_to(artist_path(@artist))
end

# show
def show
  @artist = Artist.find(params[:id])
end

# edit
def edit
  @artist = Artist.find(params[:id])
end

# update
def update
  @artist = Artist.find(params[:id])
  @artist.update(params[:artist].permit!)
  redirect_to(artist_path(@artist))
end

# destroy
def destroy
  @artist = Artist.find(params[:id])
  @artist.destroy
  redirect_to(artists_path)
end

end
