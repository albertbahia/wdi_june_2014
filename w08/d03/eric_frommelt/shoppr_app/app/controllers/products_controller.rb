class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def search
    search_params = params[:search].downcase
    @products = Product.where("lower(name) like ?", "%#{search_params}%")
  end

  def filter
    @products = Product.where(category: params[:category])
  end

end
