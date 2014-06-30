require 'active_record'

ActiveRecord::Base.establish_connection({
  database: 'wdinstagram_db',
  adapter: 'postgresql'
})

class Image < ActiveRecord::Base

end
