class OMDB
	def self.search(term)
		search_url = URI.escape("http://ww.omdbapi.com/?s=#{term}")
		api_response = HTTParty.get(search_url)  #string

		results = JSON.parse(api_response)["search"]

		results_array = []
		results.each do |omdb_id|
			omdb_id
			#make an api call
			#store the result in my results_array
		end
	end
end

#we want OMDB.search("True Grit")