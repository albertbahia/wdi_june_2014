require 'sinatra'
require 'sinatra/reloader'
require 'httparty'
require 'pry'

require_relative 'models/coindesk.rb'

# binding.pry

get '/' do
  @bpi = Coindesk.bpi
  erb :index
end
