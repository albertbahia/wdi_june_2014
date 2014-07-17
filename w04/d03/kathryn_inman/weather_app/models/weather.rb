class Weather
  def self.search(city)
    city_params = city.split.join("+")
    api_root = "api.openweathermap.org/data/2.5/weather?q=London,uk"
    HTTParty.get(api_root + city_params)
  end
end
