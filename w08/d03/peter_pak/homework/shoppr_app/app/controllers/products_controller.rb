class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def search
    @products = Product.where("name LIKE (?)", "%#{params[:search].capitalize}%")
  end

  def filter
    @products = Product.where("category LIKE (?)", "#{params[:category]}")
  end

end
