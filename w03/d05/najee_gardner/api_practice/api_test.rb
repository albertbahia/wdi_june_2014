require 'pry'
require 'httparty'
require 'sinatra'
require 'sinatra/reloader'

get '/' do
  @giphy_calls = HTTParty.get('http://api.giphy.com/v1/gifs/search?q=random&api_key=dc6zaTOxFJmzC&limit=10')
  erb :home
end

get '/search' do
  url_search = params[:user_search]
  @giphy_results = HTTParty.get(URI.escape("http://api.giphy.com/v1/gifs/search?q=#{url_search}&api_key=dc6zaTOxFJmzC"))['data']
  erb :search
end
