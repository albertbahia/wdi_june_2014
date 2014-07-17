class OMDB
	def self.search(term)
		search_url = URI.escape("http://omdbapi.com/?s=#{term}")
		api_response = HTTParty.get(search_url)  #string
		results = JSON.parse(api_response)["Search"]
	end
end

#we want OMDB.search("True Grit")