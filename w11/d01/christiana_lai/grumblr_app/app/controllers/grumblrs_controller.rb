class GrumblrsController < ApplicationController
  def index
    @grumblrs = Grumblr.all
    render status: 200, json: @grumblrs.to_json
  end

  def show
    @grumblr = Grumblr.find(params[:id])
    render status: 200, json: @grumblr.to_json
  end

  def create
    @grumblr = Grumblr.new(params[:id])
    if @grumblr.save
      render status: 200, json: @grumblr.to_json
    end
  end

  def update
    @grumblr = Grumblr.find(params[:id])
    if @grumblr.update(grumblr_params)
      render status: 200, json: @grumblr.to_json
    end
  end

  def destroy
    @grumblr = Grumblr.find(params[:id])
    if @grumblr.destroy
      render status: 200, json: @grumblr.to_json
    end
  end

  private
  def grumblr_params
    params.require(:grumblr).permit(:author, :content, :title, :image, :avatar)
  end
end
