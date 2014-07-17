class OMDB
	def self.search(term)
		search_url = URI.escape("http://omdbapi.com/?s=#{term}")
		api_response = HTTParty.get(search_url)  #string
		results = JSON.parse(api_response)["Search"]
		results_array = results.map do |movie|
			movie["imdbID"]
		end

		movie_info_array = results_array.map do |imdbid|
			movie = JSON.parse(HTTParty.get("http://www.omdbapi.com/?i=#{imdbid}"))
			movie_info = {
				"Title" => movie["Title"],
				"Year" => movie["Year"],
				"Actors" => movie["Actors"],
				"Plot" => movie["Plot"],
				"Poster" => movie["Poster"]
			}
		end
	end
end

#we want OMDB.search("True Grit")