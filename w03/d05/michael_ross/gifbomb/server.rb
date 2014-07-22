require 'sinatra'
require 'sinatra/reloader'
require 'httparty'
#after building class
require './models/giphy'

# Below, first step, built without class.

# get '/' do
#   @api_call = HTTParty.get('http://api.giphy.com/v1/gifs/search?q=monster&api_key=dc6zaTOxFJmzC&limit=10')['data']
#   erb :root
# end
#
# get '/search' do
#   search_term = params[:search]
#   @api_call = HTTParty.get("http://api.giphy.com/v1/gifs/search?q=#{search_term}&api_key=dc6zaTOxFJmzC&limit=10")['data']
#   erb :search
# end

# changed after writing Giphy Class with search class method

get '/' do
  @api_call = Giphy.search('monsters')
  erb :root
end

get '/search' do
  search_term = params[:search]
  @api_call = Giphy.search(search_term)
  erb :search
end
