require 'sinatra'
require 'sinatra/reloader'
require 'httparty'
require './models/weather'


get('/') do
  @weather = params[:search] ? Weather.search(params[:search])........
  Weather.search('New York City')
  erb :home
end

get('/search') do
  search_term = params[:search]
  @api_call = Weather.search(search_term)
  erb :search
end
