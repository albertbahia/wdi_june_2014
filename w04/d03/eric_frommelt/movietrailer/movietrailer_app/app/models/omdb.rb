class OMDB
  def self.search(term)
    search_url = URI.escape("http://www.omdbapi.com/?s=#{term}")
    api_response = HTTParty.get(search_url)
    results = JSON.parse(api_response)["search"]
    results_array = []
    results.each.do |r|
      #make an api call
      #store the results in my results array
    end
  end
end
