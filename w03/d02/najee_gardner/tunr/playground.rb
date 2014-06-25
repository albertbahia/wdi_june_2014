require 'active_record'
require 'pry'
require_relative 'lib/playlist.rb'
require_relative 'lib/song.rb'

ActiveRecord::Base.establish_connection({
    database: 'tunr_db',
    adapter: 'postgresql'
})

binding.pry
