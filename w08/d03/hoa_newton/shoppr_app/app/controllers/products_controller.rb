class ProductsController < ApplicationController

  def index
    @products = Product.all 
  end

  def search
    @products = Product.where("name LIKE (?)", "%#{params[:search]}%")
    render 'index'
  end

  def filter
    @products = Product.where({ category: params[:category]})
    render 'index'
  end

end
