require 'sinatra'
require 'sinatra/reloader'
require 'httparty'
require_relative './bitcoin'

get('/') do
  @exchange = Bitcoin.exchange
  erb :home
end
