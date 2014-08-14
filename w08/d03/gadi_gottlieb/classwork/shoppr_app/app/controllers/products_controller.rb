class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def search
    @product = Product.where("LOWER(name) LIKE '%#{params[:search]}%'")
  end

  def filter
    @products = Product.where(category: params[:category])
  end

end
