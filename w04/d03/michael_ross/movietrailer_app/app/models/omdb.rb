class OMDB
  def self.search(term)
    search_url = URI.escape("http://www.omdbapi.com/?s=#{term}")
    api_response = HTTParty.get(search_url)
    results = JSON.parse(api_response)["Search"]

    results_array=[]
    results.each do |r|

      
      # make an api call
      # store result in my results array

    # NOW you need to take first result and query api again using results (IMDB_ID) - get response (movie hash) and put in array

  end
end
