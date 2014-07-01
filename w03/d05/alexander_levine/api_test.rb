require 'pry'
require 'httparty'

api_call = JSON.parse(HTTParty.get('https://itunes.apple.com/search?term=jack+johnson&limit=4'))

binding.pry
