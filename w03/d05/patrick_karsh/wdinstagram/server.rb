require 'sinatra'
require 'sinatra/reloader'
require 'active_record'

# Load specific routes 
require_relative 'controllers/images'

# load models
require_relative 'models/image'

ActiveRecord::Base.establish_connection({
  database: 'wdinstagram_db',
  adapter: 'postgresql'
}) 

after do 
  ActiveRecord::Base.connection.close
end 

get '/' do 
	erb(:home)
end 
