class OMDB
  def self.search(term)
    # api_response = HTTParty.get(URI.escape"http://www.omdbapi.com/?s=#{term}"))
    search_url = URI.escape("http://www.omdbapi.com/?s=#{term}")
    api_response = HTTParty.get(search_url)
    results = JSON.parse(api_response)["Search"]
    results_array = []

    results.each do |r|
      id = r["imdbID"]
      search_id = URI.escape("http://www.omdbapi.com/?i=#{id}")
      api_call = HTTParty.get(search_id)
      id_results = JSON.parse(api_call)
      results_array << id_results
    end
  return results_array
  end
end
