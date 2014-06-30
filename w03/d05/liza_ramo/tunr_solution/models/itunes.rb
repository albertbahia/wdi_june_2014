class Itunes

  #Search the iTunes API
  def self.search(song_to_search)
    search_result = HTTParty.get(URI.escape("https://itunes.apple.com/search?term=#{song_to_search}&media=music&entity=song&limit=5"))
    JSON.parse(search_result)['results']
  end

end
