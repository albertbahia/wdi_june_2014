require 'sinatra'
require 'sinatra/reloader'
require 'httparty'

require_relative './models/giphy.rb'

get '/' do
  @random = HTTParty.get('http://api.giphy.com/v1/gifs/random?api_key=dc6zaTOxFJmzC')['data']
  erb(:home)
end

get '/doge' do
  @api_call = HTTParty.get('http://api.giphy.com/v1/gifs/search?q=doge&api_key=dc6zaTOxFJmzC&limit=10')['data']
  erb(:doge)
end

get ('/search') do
  search_term = params[:search]
  @api_call = Giphy.search(search_term)
  erb(:search)
end
