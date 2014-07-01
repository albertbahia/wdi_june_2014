require 'sinatra'
require 'sinatra/reloader'

require 'httparty'
require './models/giphy'


get '/' do
  @api_call = HTTParty.get("http://api.giphy.com/v1/gifs/search?q=doge&api_key=dc6zaTOxFJmzC&limit=10")['data']
  erb(:gifs)
end

get '/search' do
  search_term = params[:search]
  @api_call = Giphy.search(search_term)
  erb(:search)
end
