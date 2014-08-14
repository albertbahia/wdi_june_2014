require 'pry'
require 'httparty'
require "JSON"


api_call= HTTParty.get('http://api.openweathermap.org/data/2.5/weather?q=London')

api_parse= JSON.parse(api_call)

class Openweather
	
end 
def OpenWeather(city)
	api_call
end 