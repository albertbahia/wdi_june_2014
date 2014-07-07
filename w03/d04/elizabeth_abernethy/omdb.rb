class OMDB
  def self.search(term)
  search_url = URI.escape("http://www.omdbapi.com/?s=#{term}")
  api_response = HTTParty.get(search_url)
  results = JSON.parse(api_response)["Search"]
  results_array = []
  results.each do |r|
    # make an api call
    # store the result in my results_array
    end
  end
end




# OMDB.search("True Grit")
