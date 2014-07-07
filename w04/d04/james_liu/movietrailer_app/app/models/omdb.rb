class OMDB < ApplicationsController

  def self.search(term)
    search_url = URI.escape("http://www.omdbapi.com/?s#{term}")
    api_response = HTTParty.get(search_url)
    results = JSON.parse(api_response)["Search"]

    results_array = []
    results.each do |r|
      api_call = 
    end
    results_array << api_call
  end

end