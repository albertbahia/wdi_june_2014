require 'pry'
require 'httparty'


api_call = HTTParty.get("http://api.giphy.com/v1/gifs/search?q=ayanami+rei&api_key=dc6zaTOxFJmzC&limit=5")


binding.pry
