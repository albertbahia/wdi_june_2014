class PaintingsController < ApplicationController

  def index
    @paintings = Painting.all
  end

  def new
    @paintings = Painting.new
    @artists = Artist.all
  end

  def create
    @paintings = Painting.create!(painting_params)
    redirect_to(painting_path(@paintings))
  end

  def show
    @paintings = Painting.find(params[:id])
  end

  def edit
    @paintings = Painting.find(params[:id])
  end

  def update
    @paintings = Painting.find(params[:id])
    @paintings.update(painting_params)
    redirect_to(painting_path(@paintings))
  end

  def destroy
    @paintings = Painting.find(params[:id])
    @paintings.destroy
    redirect_to(paintings_path)
  end

  private
  def painting_params
    params.require(:painting).permit(:title, :img_url, :year_painted, :artist_id, :description)
  end

end
