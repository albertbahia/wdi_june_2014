require 'active_record'
require 'pry'

ActiveRecord::Base.establish_connection({
    database: 'tunr_db',
    adapter: 'postgresql'
})

class Playlist < ActiveRecord::Base
  has_and_belongs_to_many :songs
end

binding.pry
