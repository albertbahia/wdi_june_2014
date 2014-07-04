class OMDB
  def self.search(term)
    search_url = URI.escape("http://www.omdbapi.com/?s=#{term}")
    api_response = HTTParty.get(search_url)
    results = JSON.parse(api_response)["Search"]
    results_array = []

    results.each do |r|

      id = r["imdbID"]
      search_id_url = URI.escape("http://www.omdbapi.com/?i=#{id}")
      search_response = HTTParty.get(search_id_url)
      search_results = JSON.parse(search_response)
      results_array << search_results
    end
    return results_array
  end
end
