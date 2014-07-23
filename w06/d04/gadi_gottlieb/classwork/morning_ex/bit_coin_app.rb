require 'sinatra'
require 'sinatra/reloader'
require 'httparty'
require 'json'

binding.pry
response = JSON.parse(HTTParty.get("https://api.coindesk.com/v1/bpi/currentprice"))
get '/'
