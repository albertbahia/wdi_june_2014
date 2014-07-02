require 'sinatra'
require 'sinatra/reloader'
require 'httparty'

get '/' do
  erb(:home)
end

get '/search' do
  search_term = params[:search]
  @lat = HTTParty.get("https://maps.googleapis.com/maps/api/place/textsearch/json?query='#{search_term}'&key=AIzaSyDJBHPsYSBBFSPc8P6I3O881yh-W6XEVdA")["results"][0]["lat"]
  @lng = HTTParty.get("https://maps.googleapis.com/maps/api/place/textsearch/json?query='#{search_term}'&key=AIzaSyDJBHPsYSBBFSPc8P6I3O881yh-W6XEVdA")["results"][0]["lng"]
  redirect(:search)
end
