require 'httparty'

class MovieData
	def self.search(m)
		m = {t: m}.to_query
		movie = JSON.parse(HTTParty.get("http://www.omdbapi.com/?#{m}"))
	end
end
