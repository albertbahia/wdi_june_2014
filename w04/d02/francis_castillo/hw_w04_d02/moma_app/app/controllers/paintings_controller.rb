class PaintingsController < ApplicationController

  def index
    @painting = Painting.all
  end

  def new
    @painting = Painting.new
  end

  def create
    @painting = Painting.create!(params[:painting].permit!)
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
    @painting.update!(params[:painting].permit!)
    redirect_to(painting_path(@painting))
  end

  def destroy
    @paintings = Painting.all
    @painting = Painting.find(params[:id])
    @painting.destroy
    redirect_to(paintings_path(@paintings))
  end

  private
  def painting_params
    params.require(:painting).permit(:img_url, :title,  :year_painted, :description)
  end
end
