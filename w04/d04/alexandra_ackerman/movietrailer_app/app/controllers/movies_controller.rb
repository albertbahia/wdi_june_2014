class MoviesController < ApplicationController

	def index
		@movies = Movie.all
	end

	def new
		@movie = Movie.new
	end

	def create
		@movie = Movie.new(movie_params)

		if @movie.save
			redirect_to(movie_path(@movie))
		else
			render(:new)
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
			redirect_to(movie_path(@movie))
		else
			render(:edit)
		end
	end

	def destroy
		@movie = Movie.find(params[:id])
		@movie.destroy
		redirect_to(movies_path)
	end

	def add_actor
	    @movie = Movie.find(params[:id])
	    @movie.actors.push(Actor.find(params[:actor_id]))
	    redirect_to("/movies/#{@movie.id}")
  	end

	 def remove_actor
	    @movie = Movie.find(params[:id])
	    @movie.actors.delete(Actor.find(params[:actor_id]))
	    redirect_to("/movies/#{@movie.id}")
	 end

	def search
		@movie = Movie.new
		# @actor = Actor.new
		search_term = params[:search]
		@search_results = Omdb.search(search_term)
	end

  private

  def movie_params
  	params.require(:movie).permit(:title, :year, :poster_url, :plot)
  end

end