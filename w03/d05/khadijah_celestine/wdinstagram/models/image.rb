require_relative './user'

class Image < ActiveRecord::Base
	belongs_to :user
end

ActiveRecord::Base.establish_connection({
	database: 'wdinstagram',
	adapter: 'postgresql'
})
