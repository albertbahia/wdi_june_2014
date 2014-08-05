class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def search
    @products = Product.where("LOWER(name) LIKE ?", '%'+params[:search].downcase+'%')
  end

  def filter
    @products = Product.where(category: params[:category])
  end

end