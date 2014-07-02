class PaintingsController < ApplicationController

  def index
    @paintings = Painting.all
  end

  def new
    @painting = Painting.new
  end

  def create
      @painting = Painting.create!(paintings_params)
      redirect_to(paintings_path(@painting))
  end


  def show
    @painting = Painting.find(params[:id])
  end

  def edit
    @painting = Painting.find(params[:id])
  end

  def update
    @painting = Painting.find(params[:id])
    @painting.update!(paintings_params)
    redirect_to(painting_path(@painting))
  end

  def destroy
    @painting = Painting.find(params[:id])
    @painting.destroy
    redirect_to(paintings_path)
  end


  private
  def paintings_params
    params.require(:painting).permit(:img_url, :title, :artist_id, :year_painted, :description)
  end

end