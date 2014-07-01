require 'sinatra'
require 'sinatra/reloader'
require 'httparty'


get '/' do
  @api_call = HTTParty.get('http://api.giphy.com/v1/gifs/trending?api_key=dc6zaTOxFJmzC&limit=10')
  erb(:index)
end

get '/search' do
  search_term = params[:search]
  @search_call = HTTParty.get(URI.escape("http://api.giphy.com/v1/gifs/search?q=#{search_term}&api_key=dc6zaTOxFJmzC&limit=10"))
  erb(:search)
end
