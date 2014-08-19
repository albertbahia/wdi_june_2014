class GrumblesController < ApplicationController
 
  def index
    @grumbles = Grumble.all
    render json: @songs.to_json
  end

  def show
    @grumble = Grumble.find(params[:id])
    render json: @grumble.to_json 
  end

  def create
    @grumble = Grumble.new(grumble_params)
      if @grumble.save
        render json: @grumble.to_json
      end
  end

  def update
      if @grumble.update(grumble_params)
        render json: @grumble.to_json
      end
  end

  def destroy
    @grumble.destroy
    render json: @grumble.to_json
  end

  private

    def grumble_params
      params.require(:grumble).permit(:author, :content, :title, :image, :avatar, :timestamps)
    end
end
