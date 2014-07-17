require 'sinatra'
require 'sinatra/reloader'
require 'httparty'


get '/' do
  api_call = HTTParty.get('https://maps.googleapis.com/maps/api/place/textsearch/xml?query=restaurants+in+Sydney&key=AIzaSyAGg0RbmTW5ynChiej7LnsrXkl1aNYtgZQ')
  @lat = api_call["PlaceSearchResponse"]["result"][0]["geometry"]["location"]["lat"]
  @lng = api_call["PlaceSearchResponse"]["result"][0]["geometry"]["location"]["lng"]
  erb(:home)
end

get '/search' do
  search = params[:search]
  api_call = HTTParty.get(URI.escape("https://maps.googleapis.com/maps/api/place/textsearch/xml?query=#{search}&key=AIzaSyAGg0RbmTW5ynChiej7LnsrXkl1aNYtgZQ"))
  @lat = api_call["PlaceSearchResponse"]["result"][0]["geometry"]["location"]["lat"]
  @lng = api_call["PlaceSearchResponse"]["result"][0]["geometry"]["location"]["lng"]
  erb(:home)
end
