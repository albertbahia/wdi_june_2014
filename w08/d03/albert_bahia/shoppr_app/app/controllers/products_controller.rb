class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def search
    @products =  Product.where("name ILIKE ? ", "%#{params[:search]}%")
  end

  def filter
    @products = Product.where("category LIKE ? ", "%#{params[:category]}%")
  end
end
