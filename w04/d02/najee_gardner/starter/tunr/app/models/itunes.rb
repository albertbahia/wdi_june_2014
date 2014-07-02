class Itunes

  def self.search(search_term)
    HTTParty.get(URI.escape("https://itunes.apple.com/search?term=#{search_term}&limit=25&media=music&entity=song"))
  end
end
