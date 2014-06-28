require 'active_record'
require 'pry'


class Image < ActiveRecord::Base

ActiveRecord::Base.establish_connection({
	database: 'wdinstagram',
	adapter: 'postgresql'
})

end

