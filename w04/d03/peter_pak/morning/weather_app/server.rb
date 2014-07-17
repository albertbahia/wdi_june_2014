require 'sinatra'
require 'sinatra/reloader'
require 'httparty'

require_relative 'models/api.rb'


get '/' do
  @temp_search = params[:search] ? Api.get_weather(params) : Api.get_weather('New York City')
  erb(:home)
end

# get '/search' do
#   search_param = params[:search]
#   @temp_search = Api.get_weather(search_param)
#   erb(:home)
# end
