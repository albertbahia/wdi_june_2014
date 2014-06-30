require 'sinatra'
require 'sinatra/reloader'
require 'active_record'

#load routes
require_relative 'controllers/photos'

#load models
require_relative 'models/photo'

#load active record and connect to db
ActiveRecord::Base.establish_connection({
  database: 'radstagram_db',
  adapter: 'postgresql'
})

# Fix an issue with sinatra and Active Record where connections are left open
after do
  ActiveRecord::Base.connection.close
end

#index route
get '/' do
  @photos = Photo.all
  erb(:index)
end

set :public_folder, 'public'
