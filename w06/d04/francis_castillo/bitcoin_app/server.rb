require 'sinatra'
require 'sinatra/reloader'
require 'httparty'
require 'json'
require './models/bitcoin'

get '/' do
  @rates = Bitcoin.all_rates
  erb :index
end
