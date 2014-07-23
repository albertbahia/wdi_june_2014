# require 'sinatra'
# require 'sinatra/reloader'
# require 'httparty'
# require 'json'
# require './models/bitcoin'
#
# def bitcoin_call
# # RestClient.get("https://api.coindesk.com/v1/bpi/currentprice.json")
# JSON.parse(HTTParty.get("https://api.coindesk.com/v1/bpi/currentprice.json"))
# end
#
# get '/' do
#   "Current USD exchange rate for bitcoin is #{bitcoin_call['bpi']['USD']['symbol']}#{bitcoin_call['bpi']['USD']['rate']} <br>" +
#   "Current GBP exchange rate for bitcoin is #{bitcoin_call['bpi']['GBP']['symbol']}#{bitcoin_call['bpi']['GBP']['rate']} <br>"  +
#   "Current EUR exchange rate for bitcoin is #{bitcoin_call['bpi']['EUR']['symbol']}#{bitcoin_call['bpi']['EUR']['rate']}" +
#   "<FORM>
# <INPUT TYPE="button" onClick="history.go(0)" VALUE="Refresh">
# </FORM>"
# end
