require 'sinatra'
require 'sinatra/reloader'
require 'HTTParty'
require './models/bitcoin'


get '/' do

  @rates = self.all_rates
  
  erb :home
end
