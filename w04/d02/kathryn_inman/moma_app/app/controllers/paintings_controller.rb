class PaintingsController < ApplicationController

# index
def index
  @paintings = Painting.all
end

# new
def new
  @painting = Painting.new
end

# create
def create
  @painting = Painting.create(params[:painting].permit!)
  redirect_to(artist_painting_path(@painting.artist.id, @painting))
end

# show
def show
  @painting = Painting.find(params[:id])
end

# edit
def edit
  @painting = Painting.find(params[:id])
end

# update
def update
  @painting = Painting.find(params[:id])
  @painting.update(params[:painting].permit!)
  redirect_to(artist_painting_path(Artist.all, @painting))
end

# destroy
def destroy
  @painting = Painting.find(params[:id])
  @painting.destroy
  redirect_to(artist_paintings_path(Artist.all))
end

end
