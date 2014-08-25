class OmdbApi
  def self.search(query)
    raw_response = HTTParty.get("http://www.omdbapi.com/?s=#{URI.escape(query)}")
    parsed_response = JSON.parse(raw_response)
    movies = parsed_response["Search"] || []
    movies.map {|movie| self.movie(movie["imdbID"])}
  end

  def self.movie(id)
    raw_response = HTTParty.get("http://www.omdbapi.com/?i=#{URI.escape(id)}")
    parsed_response = JSON.parse(raw_response)

    parsed_response["Poster"] = nil unless parsed_response["Poster"].include?("http")

    {
      title: parsed_response["Title"] || 'Unknown',
      year: parsed_response["Year"] || 'Unknown',
      genre: parsed_response["Genre"] || 'Unknown',
      plot: parsed_response["Plot"] || 'Unknown',
      poster_url: parsed_response["Poster"] || 'http://placekitten.com/300/500',
      imdbRating: parsed_response["imdbRating"] || 'Unknown',
      imdbID: parsed_response["imdbID"] || 'Unknown'
    }
  end
end
