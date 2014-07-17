class Api

  def self.get_weather(search_param)
    return  HTTParty.get(URI.escape"http://api.openweathermap.org/data/2.5/forecast?q=#{search_param}&units=imperial")["list"][0]["main"]["temp"]
  end

end



# in class
#  def self.search(city)
#   city_param = city.split.join('+')
#   api_root = "http://api.openweathermap.org/data/2.5/forecast?q="
#   HTTParty.get(api_root + city_param + "&units=imperial")
#  end
# end
