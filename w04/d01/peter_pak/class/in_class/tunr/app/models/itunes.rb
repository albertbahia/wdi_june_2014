

class Itunes

  def self.song_search(search_param)
    return JSON.parse(HTTParty.get(URI.escape("http://itunes.apple.com/search?term=#{search_param}&entity=song&limit=10")))["results"]
  end

  def self.artist_search(search_param)
    return JSON.parse(HTTParty.get(URI.escape("http://itunes.apple.com/search?term=#{search_param}&entity=musicArtist&limit=10")))["results"]
  end

end
