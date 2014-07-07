class Omdb < ActiveRecord::Base
  def self.search(term)
    search_url = URI.escape("http://www.omdbapi.com/?s=#{term}")
    api_response = HTTParty.get(search_url)
    results = JSON.parse(api_response)["Search"]

    results_array=[]

    results.each do |r|
      movie_id = r["imdbID"]
      search_id = URI.escape("http://www.omdbapi.com/?s=#{movie_id}")
      api_call = HTTParty.get(search_id)
      id_results = JSON.parse(api_call)
      results_array << id_results
    end
    return results_array
  end
end
