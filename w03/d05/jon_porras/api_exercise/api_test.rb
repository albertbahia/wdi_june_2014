require 'pry'
require 'httparty'

api_call = HTTParty.get('http://api.giphy.com/v1/gifs/search?q=doge&api_key=dc6zaTOxFJmzC')

#print api_call['data'][0]['images']['original']['url']

binding.pry
