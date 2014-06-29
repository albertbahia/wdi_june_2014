require 'active_record'
require 'pry'
require_relative './user'

class Image < ActiveRecord::Base
belongs_to :user

ActiveRecord::Base.establish_connection({
	database: 'wdinstagram',
	adapter: 'postgresql'
})

end

binding.pry
