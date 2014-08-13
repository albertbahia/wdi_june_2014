class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def search
    @products = Product.where('LOWER(name) LIKE ?', "%#{params[:search].downcase}%")
  end

  def filter
    @products = Product.where('LOWER(category) LIKE ?', "%#{params[:category].downcase}%")
  end

end
