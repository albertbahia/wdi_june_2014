# Loading all the necessary gems
require 'sinatra'
require 'sinatra/reloader'
require 'active_record'

# Loading the routes from the controllers folder of the project
require_relative 'controllers/images'

# Loading the models for the projects
require_relative 'models/image'

# Loading Active Recode and connecting to the database
ActiveRecord::Base.establish_connection({
  database: 'photo_share_db',
  adapter: 'postgresql'
})

# Fix an issue with sinatra and Active Record where connections are left open
after do
  ActiveRecord::Base.connection.close
end

# Root route

get '/' do
    erb(:home)
end
