  class ProductsController < ApplicationController

  def index
    @products = Product.all
    # @product = Product.search(params[:search])
  end

  def search
    @product = Product.where("LOWER(name) LIKE '%#{params[:search]}%'")
  end

  def filter
    if params[:category] === "Home"
      @product = Product.where("LOWER(category) = 'home'")
    elsif params[:category] === "Office"
      @product = Product.where("LOWER(category) = 'office'")
    elsif params[:category] === "Kitchen"
      @product = Product.where("LOWER(category) = 'kitchen'")
    elsif params[:category] === "Bathroom"
      @product = Product.where("LOWER(category) = 'bathroom'")
    end
  end
  
end
