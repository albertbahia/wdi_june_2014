class ProductsController < ActionController::Base

  def index
    @products = Product.all
  end

  def search
    search_params = params[:search].downcase
    @products = Product.where("LOWER(name) LIKE ?", "%#{search_params}%")
  end

  def filter
    filter_params = params[:category]
    @products = Product.where(category: filter_params)
  end

  def product_params
    params.require(:product).permit(:name, :price, :quantity, :category)
  end

end
