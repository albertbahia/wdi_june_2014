require 'sinatra'
require 'sinatra/reloader'
require 'httparty'
require_relative './weather'

get('/') do 

  @weather = params[:search] ? Weather.search(params['search']) : Weather.search('New York City')
  erb :home
end