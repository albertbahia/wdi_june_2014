class GrumblesController < ApplicationController
  def index
    @grumbles = Grumble.all
    render json: @grumbles.to_json
  end

  def show
    @grumble = Grumble.find(params[:id])
    render json: @grumble.to_json
  end

  def new
    render nothing: true
  end

  def create
    @grumble = Grumble.new(grumbles_params)
    @grumble.save
    render json: @grumble.to_json
  end

  def edit
    render nothing: true
  end

  def update
    @grumble = Grumble.find(params[:id])
    @grumble.update(grumble_params)
    render json: @grumple.to_json
  end

  def destroy
    @grumble = Grumble.find(params[:id])
    @grumble.destroy
    render json: @grumple.to_json
  end

  private
  def grumbles_params
    params.require(:grumble).permit(:author,:content,:title,:image,:avatar)
  end

end
