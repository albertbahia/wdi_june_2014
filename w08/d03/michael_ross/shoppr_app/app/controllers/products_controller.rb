class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def search
    @products = Product.where('name ILIKE ?', "%#{params[:search]}%")
  end

  def filter
    @products = Product.where("category = '#{params[:category]}'")
  end

  def product_params
    params.require(:product).permit(:name, :quantity, :price, :category)
  end

end
