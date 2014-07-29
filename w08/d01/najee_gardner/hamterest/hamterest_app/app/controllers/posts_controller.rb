class PostsController < ApplicationController

  def index
    @posts = Post.limit(10)
    render json: @posts, status: 200
  end

  def show
    @post = Post.find(params[:id])
    render json: @post, status: 200
  end

  def show_more
    @posts = Post.limit(10).offset(params[:offset].to_i)
    render json: @posts, status: 200
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      render json: @post, status: 200
    end
  end

  def update
  end

  def destroy
    @post = Post.find(params[:id])
    render nothing: true, status: 200 if @post.destroy
  end

  private

  def post_params
    params.require(:post).permit(:title, :author, :image_url, :content, :category)
  end

end
