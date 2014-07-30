class ProductsController < ApplicationController

    def index
      @products = Product.order(created_at: :desc)
    end

    def search
      search_term = params[:search].downcase
      @results = Product.where("LOWER(name) like ?", "%#{search_term}%")
    end

    def filter
      @products = Product.where(category: params[:category])
    end


end
