class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def search
    @products = Product.where("name like ?", "%#{params[:search]}%")
    # @products = Product.where("name LIKE (?)", "%params[:search]%")
  end

  def filter
    @products = Product.where(category: params[:category])
  end

end
