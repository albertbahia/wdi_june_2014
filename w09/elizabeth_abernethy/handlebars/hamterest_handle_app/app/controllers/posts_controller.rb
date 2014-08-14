class PostsController < ApplicationController

  def index
    @posts = Post.limit(15).order('created_at')
    render json: @posts, status: 200
  end

  def show
    @post = Post.find(params[:id])
    render json: @post, status: 200
  end

  def show_more
    offset_by = params[:offset].to_i
    if offset_by < Post.count - offset_by
      @posts = Post.offset(offset_by).limit(15).order(:id)
    end
    render json: @posts, status: 200
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      render json: @post, status: 200
    end
  end

  def fetch_one
    @post = Post.find(params[:offset].to_i + 1)
    render json: @post, status: 200
  end

  def update
    @post = Post.update(params[:id], post_params)
    render json: @post, status: 200
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