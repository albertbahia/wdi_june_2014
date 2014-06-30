require 'sinatra'
require 'sinatra/reloader'
require 'httparty'
require 'pry'
require './models/giphy'



get '/' do
  @gif_time = HTTParty.get('http://api.giphy.com/v1/gifs/trending?api_key=dc6zaTOxFJmzC&limit=10')
  erb(:index)
end

#
# post '/search' do
#   @gif_search = HTTParty.get("http://api.giphy.com/v1/gifs/search?q=#{params[:search].split(' ').join('+')}&api_key=dc6zaTOxFJmzC&limit=10")
#   erb(:search)
# end

get '/search' do
  search_term = params[:search].split(' ').join('+')
  @gif_search = Giphy.search(search_term)
  # @gif_search = HTTParty.get("http://api.giphy.com/v1/gifs/search?q=#{params[:search].split(' ').join('+')}&api_key=dc6zaTOxFJmzC&limit=10")
  erb(:search)
end


# this can be done with one link. /:something maybe?
get '/kittens' do
  @api_call = HTTParty.get("http://api.giphy.com/v1/gifs/search?q=kittens&api_key=dc6zaTOxFJmzC&limit=10")
  erb(:kittens)
end

get '/puppies' do
  @api_call = HTTParty.get("http://api.giphy.com/v1/gifs/search?q=puppies&api_key=dc6zaTOxFJmzC&limit=10")
  erb(:puppies)
end

get '/pokemon' do
  @api_call = HTTParty.get("http://api.giphy.com/v1/gifs/search?q=pokemon&api_key=dc6zaTOxFJmzC&limit=10")
  erb(:pokemon)
end

get '/pandas' do
  @api_call = HTTParty.get("http://api.giphy.com/v1/gifs/search?q=pandas&api_key=dc6zaTOxFJmzC&limit=10")
  erb(:pandas)
end
# this can be done with one link. /:something maybe?



get '/search/:parameter' do

  erb(:search)
end
