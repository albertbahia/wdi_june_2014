class OMDB

  def self.search(term)
    search_url = URI.escape("http://www.omdbapi.com/?s=#{term}")
    api_response = HTTParty.get(search_url)
    results = JSON.parse(api_response)["Search"]
    
    results_array = []

    results.each do |result|
      id = result["imdbID"]
      id_search_url = URI.escape("http://www.omdbapi.com/?i=#{id}")
      id_api_response = HTTParty.get(id_search_url)
      movie = JSON.parse(id_api_response)
      results_array << movie
    end

    return results_array
  end

end
