class GrumblesController < ApplicationController


  def index
    @grumbles = Grumble.all
    render json: @grumbles.to_json, status: 200
  end

  def show
    @grumble = Grumble.find(params[:id])
    render json: @grumble.to_json, status: 200
  end

  def create
    @grumble = Grumble.new(grumble_params)
    if @grumble.save
      render json: @grumble.to_json, status: 200
    end
  end

  def update
    @grumble = Grumble.find(params[:id])
    if @grumble.update(grumble_params)
      render json: @grumble.to_json, status: 200
    end
  end

  def destroy
    @grumble = Grumble.find(params[:id])
    if @grumble.destroy
      render json: @grumble.to_json, status: 200
    end
  end

  private

  def grumble_params
    params.require(:grumble).permit(:author, :content, :title)
  end

end
