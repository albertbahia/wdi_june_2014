require 'active_record'
require 'pry'
require_relative 'lib/song'
require_relative 'lib/playlist'

ActiveRecord::Base.establish_connection({
  database: 'tunr_db',
  adapter: 'postgresql'
})

binding.pry
