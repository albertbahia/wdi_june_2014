require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require 'httparty'
require './models/bitcoin'

get '/' do
  @rates = Bitcoin.all_rates
  erb :index
end
