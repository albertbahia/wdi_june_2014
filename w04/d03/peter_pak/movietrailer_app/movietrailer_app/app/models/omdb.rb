class Omdb

  def self.search(term)
    search_hash = JSON.parse(HTTParty.get(URI.escape("http://www.omdbapi.com/?s=#{term}")))["Search"]
    imdbid_array = search_hash.map do |movie|
      movie["imdbID"]
    end
    detailed_array = imdbid_array.map do |id|
        [title: JSON.parse(HTTParty.get(URI.escape("http://www.omdbapi.com/?i=#{id}")))["Title"],
        year:
        JSON.parse(HTTParty.get(URI.escape("http://www.omdbapi.com/?i=#{id}")))["Year"],
        plot:
        JSON.parse(HTTParty.get(URI.escape("http://www.omdbapi.com/?i=#{id}")))["Plot"],
        poster:
        JSON.parse(HTTParty.get(URI.escape("http://www.omdbapi.com/?i=#{id}")))["Poster"],
        starring:
        JSON.parse(HTTParty.get(URI.escape("http://www.omdbapi.com/?i=#{id}")))["Actors"]]
    end
      return detailed_array
  end
end
