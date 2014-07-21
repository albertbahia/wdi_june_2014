require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require 'httparty'
require './models/bitcoin'

get '/' do
  erb(:"home")
end
