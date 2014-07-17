require 'sinatra'
require 'sinatra/reloader'
require 'httparty'
require './models/weather.rb'

get '/' do 
	@weather = params['search']? Weather.search(params['search']) : Weather.search('New York City')
	# search for city, if the params hasnt exists yet then search for 'New York City'
	erb :home
end

# get('/search') do 
# 	search_term = params[:search]
# 	@api_call = WeatherMap.search(search_term)
# 	erb :search
# end