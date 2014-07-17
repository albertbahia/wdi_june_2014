class Weather
  def self.search(search_param)
    city = search_param.split.join('+')
    HTTParty.get("api.openweathermap.org/data/2.5/weather?q=#{city}")
  end
end
