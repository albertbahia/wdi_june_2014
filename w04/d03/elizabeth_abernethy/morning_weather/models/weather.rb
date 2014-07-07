class Weather

  #search the API
  def self.search(city)
    city_param = city.split.join('+')
    api_root = "http://api.openweathermap.org/data/2.5/weather?q="
    HTTParty.get(api_root + city_param + "&units=imperial")
  end
end
