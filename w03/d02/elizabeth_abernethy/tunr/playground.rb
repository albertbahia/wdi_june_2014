require 'active_record'
require 'pry'
require_relative 'lib/song.rb'
require_relative 'lib/playlist.rb'

ActiveRecord::Base.establish_connection({
  database: 'tunr_db'
  adapter: 'postgresql'
  })

binding.pry
