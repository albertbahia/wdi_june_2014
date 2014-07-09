
class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  #eprotect_from_forgery with: :exception
  def search(movie)
  	movie_param = movie.split.join('+')
  	api_root =  'http://www.omdbapi.com/?s=' 
  	HTTParty.get(api_root + movie_param)
  end 
end
