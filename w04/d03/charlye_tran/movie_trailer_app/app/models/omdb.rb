class OMDB

  def self.search(term)
    api_response = HTTParty.get(URI.escape("http://www.omdbapi.com/?s=#{term}"))
    results = []
    results = JSON.parse(api_response)["Search"]
    ids = results.map do |result|
      result["imdbID"]
    end
    movies = ids.map do |id|
      id_call = JSON.parse((HTTParty.get(URI.escape("http://www.omdbapi.com/?i=#{id}"))))
      title = id_call["Title"],
      year = id_call["Year"],
      plot = id_call["Plot"],
      actors = id_call["Actors"]
    end
    return movies
  end
end
