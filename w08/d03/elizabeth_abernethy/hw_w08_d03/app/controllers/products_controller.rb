class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def search
    @products = Product.where("name LIKE '%#{params[:search]}%'")
  end

  def filter
  end

  def product_params
    params.require(:product).permit(:name, :quantity, :price, :category)
  end

end
