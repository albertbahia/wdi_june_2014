require 'sinatra'
require 'sinatra/reloader'
require 'active_record'
# require 'httparty'

# Load specific routes
require_relative './controllers/images'

# Load models
require_relative 'models/image'

# Load Active Record and connect to the DB
ActiveRecord::Base.establish_connection({
  database: 'hamco_image_db',
  adapter: 'postgresql'
})

# Fix an issue with sinatra and Active Record where connections are left open
after do
  ActiveRecord::Base.connection.close
end


####################
#  General routes  #
####################

get '/' do
  erb(:home)
end


