class Weather

  def self.search(city)
    city_param = city.split.join('+')
    api_call = "http://api.openweathermap.org/data/2.5/weather?q="
    HTTParty(api_call + city_param + "&units=imperial")
  end

end
