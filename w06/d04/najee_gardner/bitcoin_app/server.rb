require 'sinatra'
require 'sinatra/reloader'
require 'httparty'

require_relative 'models/bitcoin.rb'

get '/' do
  bitcoin_info = Bitcoin.exchange_rates
  @time_updated = bitcoin_info['time']['updated']
  @usd = bitcoin_info['bpi']['USD']
  @gbp = bitcoin_info['bpi']['GBP']
  @eur = bitcoin_info['bpi']['EUR']

  erb :index
end
