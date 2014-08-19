class GrumblrController < ApplicationController

  def index
    @grumblr = Grumblr.all
    render status: 200, json: @grumblr.to_json
  end

  def show
    @grumblr = Grumblr.find(params[:id])
    render status: 200, json: @grumblr.to_json
  end

  def create
    @grumblr = Grumblr.new(grumblr_params)
    if @grumblr.save
      render json: @grumblr.to_json, status: 200
    end
  end

  def update
    @grumblr = Grumblr.find(params[:id])
    if @grumblr.update(grumblr_params)
      render json: @grumblr.to_json, status: 200
    end
  end

  def destroy
    @grumblr = Grumblr.find(params[:id])
    if @grumblr.update(grumblr_params)
      render json: @grumblr.to_json, status: 200
    end
  end

  private
  def grumblr_params
    params.permit(:author, :content, :title, :image, :avatar)
  end
end
