require 'sinatra'
require 'sinatra/reloader'
require 'active_record'
require 'pry'

# Load specific routes
require_relative 'controllers/images'

require_relative 'models/image'

# Load Active Record and connect to the DB
ActiveRecord::Base.establish_connection({
  database: 'wdinstagram_db',
  adapter: 'postgresql'
})

# Fix an issue with sinatra and Active Record where connections are left open
after do
  ActiveRecord::Base.connection.close
end

get '/' do
  erb(:home)
end
