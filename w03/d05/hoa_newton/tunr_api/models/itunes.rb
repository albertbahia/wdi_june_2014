class Itunes

	def self.search(search_param)
		return JSON.parse(HTTParty.get(URI.escape("https://itunes.apple.com/search?q=#{search_param}")))
	end
end