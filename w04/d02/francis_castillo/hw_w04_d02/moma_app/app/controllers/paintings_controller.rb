class PaintingsController < ApplicationController

  def index
    @painting = Painting.all
  end

  def show
    @painting = Painting.find(params[:id])
  end

  def new
    @artists = Artist.all
    @painting = Painting.new
  end

  def create
    @painting = Painting.create(painting_params)
    redirect_to(painting_path(@painting))
  end

  def edit
    @painting = Painting.find(params[:id])
  end

  def update
    @painting = Painting.find(params[:id])
    if @painting.update(painting_params)
      redirect_to(painting_path(@painting))
    else
      redirect_to(edit_painting_path(@painting))
    end
  end

  def destroy
    @painting = Painting.find(params[:id])
    if @painting.destroy
      redirect_to(paintings_path)
    else
      redirect_to(painting_path(@painting))
    end
  end

  private
  def painting_params
    params.require(:painting).permit(:img_url, :title,  :year_painted, :description, :artist_id)
  end
end
