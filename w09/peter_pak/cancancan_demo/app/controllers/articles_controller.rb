class ArticlesController < ApplicationController

  before_action :authenticate
  load_and_authorize_resource

  def index
    # @articles = Article.all
    # authorize! :read, Article
  end

  def show
    # @article = Article.find(params[:id])
    # authorize! :read, @article
  end

  def new
    # @article = Article.new
    # authorize! :create, @article
  end

  def create
    # @article = Article.new(article_params)
    # authorize! :create, @article
    if @article.save
      redirect_to @article
    else
      render :new
    end
  end

  def edit
    # @article = Article.find(params[:id])
    # authorize! :update, @article
  end

  def update
    # @article = Article.find(params[:id])
    # authorize! :update, @article
    if @article.update(article_params)
      redirect_to @article
    else
      render :edit
    end
  end

  def destroy
    # @article = Article.find(params[:id])
    # authorize! :destroy, @article
    @article.destroy
    redirect_to articles_path
  end

  private
  def article_params
    params.require(:article).permit(:title, :content)
  end
end
