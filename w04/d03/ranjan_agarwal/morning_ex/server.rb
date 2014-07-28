require 'sinatra'
require 'sinatra/reloader'
require 'httparty'


require_relative 'models/weather'


get('/') do
  search_term = params[:search]
  @api_call = Weather.search(search_term)
  erb(:home)
end

get('/search') do
  search_term = params[:search]
  @api_call = Weather.search(search_term)
  erb :search
end
