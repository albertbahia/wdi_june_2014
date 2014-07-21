require 'sinatra'
require 'sinatra/reloader'
require 'httparty'


require_relative 'models/bitcoin.rb'


get '/' do
  @rates = Bitcoin.all_rates
  erb :index
end
