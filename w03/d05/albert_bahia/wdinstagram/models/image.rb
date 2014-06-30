# require 'active_record'
#
#
# ActiveRecord::Base.establish_connection({
#   database: 'wdinstagram_db',
#   adapter: 'postgresql'
# })

class Image < ActiveRecord::Base
  # register(Sinatra::CSS)  

  has_and_belongs_to_many :authors

end
