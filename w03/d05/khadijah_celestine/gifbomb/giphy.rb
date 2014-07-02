class Giphy

  def self.search(search_term)
    api_call = HTTParty.get(URI.escape("http://api.giphy.com/v1/gifs/search?q=#{search_term}&api_key=dc6zaTOxFJmzC&limit=20"))
  end
end
