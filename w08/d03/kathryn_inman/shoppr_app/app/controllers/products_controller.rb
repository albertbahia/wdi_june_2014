class ProductsController<ApplicationController

	def index
		@products = Product.all
	end

	def search
		@products = Product.where("name LIKE (?)", "%#{params[:search]}%")
	end

	def filter
		filter_term = params[:category]
		@products = Product.where({category: filter_term})
	end

end