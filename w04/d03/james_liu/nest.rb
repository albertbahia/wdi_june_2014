class Weather
  def self.search(city)
  city_param = city.split.join('+')
  api_root = 'api.openweathermap.org/data/2.5/weather?')
  HTTParty.get)api_root + city_param + "&units=imperial"
  erb(:home)'
end