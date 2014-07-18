class TrailersController < ApplicationController

  def index
    @trailers = Trailer.all
  end

  def new
    @trailer = Trailer.new
  end

  def create
    @trailer = Trailer.new(trailer_params)
    if @trailer.save
      redirect_to(trailer_path(@trailer))
    else
      render(:new)
    end
  end

  def show
    @trailer = Trailer.find(params[:id])
  end

  def edit
    @trailer = Trailer.find(params[:id])
  end

  def update
    @trailer = Trailer.find(params[:id])
    if @trailer.update(trailer_params)
      redirect_to(movies_path)
    else
      render(:edit)
    end
  end

  def destroy
    @trailer = Trailer.find(params[:id])
    @trailer.destroy
  end

  def trailer_params
    params.require(:trailer).permit(:title, :embed_url)
  end

end
