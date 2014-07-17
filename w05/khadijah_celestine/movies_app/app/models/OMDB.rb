require 'httparty'

class OMDB
	def self.search(m)
		m = {s: m}.to_query
		movies = JSON.parse(HTTParty.get("http://www.omdbapi.com/?#{m}"))
		movies["Search"].each do |movie|
			imdb = movie["imdbID"]
			movie_info = JSON.parse(HTTParty.get("http://www.omdbapi.com/?i=#{imdb}"))
			puts "~*~ MOVIE ~*~" *5
			puts movie_info["Title"]
			puts
		end
		
	end
end
