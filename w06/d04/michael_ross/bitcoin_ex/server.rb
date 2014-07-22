require 'sinatra'
require 'sinatra/reloader'
require 'httparty'
require './models/bitcoin'

get '/' do
  @api_call = Bitcoin.search
  erb :root
end
