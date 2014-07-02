require 'pry'
require 'httparty'

class Itunes
	def self.search(search_term)
		api_call = HTTParty.get(URI.escape("http://itunes.apple.com/search?term=#{search_term}&entity=song"))
		api_call = JSON.parse(api_call)
	end
end

binding.pry
