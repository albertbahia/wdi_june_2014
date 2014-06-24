require 'active_record'
require 'pry'

ActiveRecord::Base.establish_connection({
	database: 'shows_db',
	adapter: 'postgresql'
})

class Show < ActiveRecord::Base

end

binding.pry
