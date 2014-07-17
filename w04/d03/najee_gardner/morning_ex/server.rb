require 'sinatra'
require 'sinatra/reloader'
require 'httparty'
require 'pry'

get "/" do
  if params[:search_term]
    result = HTTParty.get(URI.escape("http://api.openweathermap.org/data/2.5/weather?q=#{params[:search_term]}"))
    kelvin = result['main']['temp']
    @location = result['name']
    @fahr = ((kelvin - 273.15) * 1.8000) + 32
  else
    result = HTTParty.get(URI.escape("http://api.openweathermap.org/data/2.5/weather?q=new york city"))
    kelvin = result['main']['temp']
    @location = result['name']
    @fahr = ((kelvin - 273.15) * 1.8000) + 32
  end

  erb :home
end
