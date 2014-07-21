require 'sinatra'
require 'sinatra/reloader'
require 'httparty'
require_relative './models/bitcoin'

get ('/') do 
	@rates = Bitcoin.all_rates
	erb :home
end