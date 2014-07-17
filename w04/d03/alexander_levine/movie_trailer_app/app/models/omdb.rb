class OMDB
  def self.search(term)
    search_url = URI.escape("http://www.omdbapi.com/?s=#{term}")
    api_response = HTTParty.get(search_url)
    results = JSON.parse(api_response)["Search"]

    results_array = []

    results.each do |result|
      results_array << result["imdbID"]
    end

    movie_results = results_array.map do |imdbID|
      JSON.parse(HTTParty.get(URI.escape("http://www.omdbapi.com/?i=#{imdbID}")))
    end

    info_results = movie_results.map do |movie|
      movie_info = []
      movie_info << movie["Title"]
      movie_info << movie["Year"]
      movie_info << movie["Poster"]
      movie_info << movie["Plot"]
      movie_info << movie["Actors"].split(", ")
    end
  end
end
