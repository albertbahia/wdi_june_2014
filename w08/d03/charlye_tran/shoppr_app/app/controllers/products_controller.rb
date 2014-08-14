class ProductsController < ApplicationController
  def index
    @product = Product.new
    @products = Product.all
  end

  def search
    @products = Product.where("name LIKE (?)", "%#{params[:search]}%")
  end

  def filter
    @products = Product.where("category LIKE (?)", "%#{params[:category]}%")
  end
end
