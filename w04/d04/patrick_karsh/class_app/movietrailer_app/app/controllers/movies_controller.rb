class MoviesController < ApplicationController 
def index
	@movies = Movie.all 
end

def new
	@movie = Movie.new  
end 

def create 
	@movie = Movie.create(movie_params)
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
		redirect_to new_movie_path 
	end 
end

def destroy 
	@movie = Movie.find(params[:id])
	
end 

def movie_params
	params.require(:movie).permit(:title, :poster_url, :year, :plot)
end  
	
end