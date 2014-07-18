class WeatherMap
	def self.search(search_param)
		return HTTParty.get(URI.escape("http://api.openweathermap.org/data/2.5/find?q=London&units=imperial"))
	end
end