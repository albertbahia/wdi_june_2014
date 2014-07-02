require './lib/playlist.rb'
require './lib/song.rb'
require 'pry'

ActiveRecord::Base.establish_connection({
  database: 'tunr_db',
  adapter: 'postgresql'
})

binding.pry
