class MoviesController < ApplicationController

	def index
		@movies = Movie.all
	end

	def new
		@movie = Movie.new
	end

	def search

	end

	def results
		@movie = Movie.new
		@search_results = OMDB.search(params[:search])
		# @movie.actors = movie["Actors"].split(", ")
	end

	def create
		actor_names_array = actor_params["actors"].split(", ")

		# iterate through actors_array and create new actor object for each name

		@movie = Movie.new(movie_params)
		if @movie.save
			actor_names_array.each do |actor|
				@movie.actors << Actor.create(name: actor)
			end
			redirect_to movie_path(@movie)
		else
			render :new
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

	private

	def actor_params
		params.require(:movie).permit(:actors)
	end

	def movie_params
		params.require(:movie).permit(:title, :poster_url, :year, :plot)
	end

end
