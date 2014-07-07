class PaintingsController < ApplicationController
  def index
    @paintings = Painting.all
    @artists = Artist.all
  end

  def new
    # @artist = Artist.new
    @painting = Painting.new
  end

  def create
    @painting = Painting.create!(painting_params)
    redirect_to(painting_path(@painting))
  end

  def show
    @artist = Artist.find(params[:id])
    @painting = Painting.find(params[:id])
  end

  def edit
    @painting = Painting.find(params[:id])
  end

  def update
    @painting = Painting.find(params[:id])
    @painting.update!(painting_params)
    redirect_to(painting_path(@painting))
  end

  def destroy
    @painting = Painting.find(params[:id])
    @painting.destroy
    redirect_to(painting_path(@painting))
  end


  def painting_params
    params.require(:painting).permit(:img_url, :title, :year_painted, :description, :artist_id)
  end

end
