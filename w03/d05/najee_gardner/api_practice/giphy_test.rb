require 'httparty'
require 'pry'

giphy_calls = []
10.times do
  giphy_calls << HTTParty.get('http://api.giphy.com/v1/gifs/random?api_key=dc6zaTOxFJmzC&')
end

binding.pry
