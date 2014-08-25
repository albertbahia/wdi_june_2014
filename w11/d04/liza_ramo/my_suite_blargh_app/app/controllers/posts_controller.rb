class PostsController < ApplicationController

  def index
    render json: Post.all, status: 200
  end

  def show
    render json: @post.to_json, status: 200
  end

  def create
    @post = Post.new(post_params)
    render json: @post.to_json, status: 200 if @post.save
  end

  def update
    render json: @post.to_json, status: 200 if @post.update(post_params)
  end

  def destroy
    render json: @post.to_json if @post.destroy
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, :image)
  end
end
