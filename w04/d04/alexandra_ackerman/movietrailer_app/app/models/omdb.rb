class Omdb

	def self.search(term)
		search_url = URI.escape("http://www.omdbapi.com/?s=#{term}")
		api_response = HTTParty.get(search_url)
		results = JSON.parse(api_response)["Search"]
		results_array = []
		results.each do |r|
			result_api_call = HTTParty.get(URI.escape("http://www.omdbapi.com/?i=#{r['imdbID']}"))
			result_info = JSON.parse(result_api_call)
			results_array.push(result_info)
		end
		return results_array
	end
end
