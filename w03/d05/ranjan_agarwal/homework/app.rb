require 'sinatra'
require 'sinatra/reloader'
require 'active_record'
require 'pry'

# Require Routes
require_relative 'controllers/images'

# Require Models
require_relative 'models/image'

# Load Active Record
ActiveRecord::Base.establish_connection ({
	database: 'wdinstagram',
	adapter:  'postgresql'
	})

after do
	ActiveRecord::Base.connection.close
end

# General Routes
get '/' do
	@images = Image.all
	erb(:home)
end