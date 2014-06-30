require 'sinatra'
require 'sinatra/reloader'
require 'active_record'

# load models
require_relative './models/image'

# load specific routes
require_relative './controllers/images'

# Fix an issue with sinatra and Active Record where connections are left open
after do
  ActiveRecord::Base.connection.close
end

get '/' do
  erb(:home)
end
