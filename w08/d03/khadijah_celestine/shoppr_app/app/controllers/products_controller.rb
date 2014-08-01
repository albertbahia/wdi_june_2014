class ProductsController < ApplicationController

  def index
    @products = Product.all
  end
  
  def search
    search_term = params[:search].capitalize
    @products = Product.search(search_term)
  end
  
  def filter
    filter_term = params[:category].downcase
    @products = Product.method(filter_term).call
  end
end
