require 'pry'
require 'httparty'
require 'active_record'
ActiveRecord::Base.establish_connection({
  database: 'tunr_db',
  adapter: 'postgresql'
})

# models
require_relative 'models/artist'
require_relative 'models/song'
require_relative 'models/playlist'

api_call = JSON.parse(HTTParty.get('https://itunes.apple.com/search?term=jack+johnson&entity=song&limit=5'))
# binding.pry
