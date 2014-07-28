require 'sinatra'
require 'sinatra/reloader'
require 'httparty'
#General Route

get '/' do

  api_call = HTTParty()

  erb :index
end
