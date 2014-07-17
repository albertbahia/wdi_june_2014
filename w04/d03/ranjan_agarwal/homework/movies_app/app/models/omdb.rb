class Omdb
  def self.search(term)
    search_url = URI.escape("http://www.omdbapi.com/?s=#{term}")
    api_response = HTTParty.get(search_url)
    results = JSON.parse(api_response)["Search"]
    results_array = []
    results.each do |r|
      id = r["imdbID"]
      imdb_url = URI.escape("http://www.omdbapi.com/?i=#{id}")
      api_id_info = HTTParty.get(imdb_url)
      id_results = JSON.parse(api_id_info)
      results_array << id_results
    end
    return results_array
  end
end
