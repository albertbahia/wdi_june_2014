class Omdb

  def self.search(term)
    search_url = URI.escape("http://omdbapi.com/?=#{term}")
    api_response = HTTParty.get(search_url)
    api_results = JSON.parse(api_response)["Search"]
    results = []
    results.each do |r|
      result_api_call = HTTParty.get(URI.escape("http://omdbapi.com/?i=#{r['imdbID']}"))
      result_info = JSON.parse(result_api_call)
      results.push(result_info)
    end
    return results
  end
end
