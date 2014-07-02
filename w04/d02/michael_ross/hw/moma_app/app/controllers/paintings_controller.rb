class PaintingsController < ApplicationController

  def index
    @paintings = Painting.all
  end

  def new
    @painting = Painting.new
  end

  def create
    @painting = Painting.create!(painting_params)
    redirect_to(painting_path(@painting))
  end

  def show
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
    redirect_to(paintings_path)
  end

  private
  def painting_params
    params.require(:painting).permit(:img_url, :title, :year_painted, :description, :artist_id)
  end


end
