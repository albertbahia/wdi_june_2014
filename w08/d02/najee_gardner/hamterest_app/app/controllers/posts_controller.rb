class PostsController < ApplicationController

  def index
    @posts = Post.limit(15).order('created_at')
    p @posts
    render json: @posts.to_json
  end

  def show
    @post = Post.find(params[:id])
    render json: @post.to_json
  end

  def show_more
    offset_by = params[:offset].to_i
    if offset_by < Post.count - offset_by
      @posts = Post.limit(10).offset(offset_by)
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
    @post = Post.find(params[:offset].to_i)
    render json: @post
  end

  def update
    @post = Post.update(params[:id], post_params)
    render json: @post
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