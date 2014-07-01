class Itunes
  def self.search(search_term)
    search_str = HTTParty.get(URI.escape("https://itunes.apple.com/search?term=#{search_term}&media=music&entity=song"))
    JSON.parse(search_str)['results']
  end
end
