require 'pry'
require 'httparty'

class SongSearch

  def self.search(search_param)
    api_results = HTTParty.get(URI.escape("https://itunes.apple.com/search?term=#{search_param}"))
    results_hash = JSON.parse(api_results)
    results_hash['results']
  end


end

binding.pry
