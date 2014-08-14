require 'sinatra'
require 'sinatra/reloader'
require 'httparty'

get '/' do
  @api_call = HTTParty.get("http://api.giphy.com/v1/gifs/search?q=doge&api_key=dc6zaTOxFJmzC&limit=10")['data']
  erb(:home)
end

get '/search' do
  search_terms = params[:search]
  @api_call = HTTParty.get(URI.escape("http://api.giphy.com/v1/gifs/search?q=#{search_terms}&api_key=dc6zaTOxFJmzC&limit=10"))['data']
  erb(:search)
end
