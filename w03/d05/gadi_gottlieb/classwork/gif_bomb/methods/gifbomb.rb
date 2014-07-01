class Gifbomb

  def self.search(search_param)
    return HTTParty.get((URI.escape"http://api.giphy.com/v1/gifs/search?q=#{search_term}&api_key=dc6zaTOxFJmzC&limit=10"))['data']
  end
end
