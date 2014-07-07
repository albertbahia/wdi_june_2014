require 'sinatra'
require 'sinatra/reloader'
require 'httparty'
require './nest.rb'


get '/' do
  @weather = params['search'] ? Weather.search(params['search']) :
    Weather.search('New York City')
  erb(:home)
end

get '/search' do
  url_result = params[:user_input]
  @weather_results = HTTParty.get(URI.escape("api.openweathermap.org/data/2.5/weather?q=#{url_result}&mode=html"))
end
