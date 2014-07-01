require 'sinatra'
require 'sinatra/reloader'
require 'httparty'
require './models/giphy'

get('/') do 
  @api_call = Giphy.search('cats')
  erb :root
end

get('/search') do
  search_term = params[:search]
  @api_call = Giphy.search(search_term)
  erb :search
end