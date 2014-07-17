class MoviesController < ApplicationController

	def index
		@movies = Movie.all
	end

	def new
	end

	def search
		search_term = params[:search]
		@results = OMDB.search(search_term)
		render :new
	end

	def create
		@movie = Movie.new(movie_params)
		if @movie.save
			redirect_to movie_path(@movie)
		else
			render :new
			# render instead of redirecting to have access to the errors array for the user"
		end
	end

	def show
		@movie = Movie.find(params[:id])
	end

	def edit
		@movie = Movie.find(params[:id])

	end

	def update
		@movie = Movie.find(params[:id])
		if @movie.update(movie_params)
			redirect_to movie_path(@movie)
		else
			redirect_to edit_movie_path(@movie)
		end
	end

	def destroy
		@movie = Movie.find(params[:id])
		@movie.destroy
		redirect_to movies_path
	end
	
	def movie_params
		params.require(:movie).permit(:title, :poster_url, :year, :plot)
	end
end
