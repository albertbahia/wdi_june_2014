require 'pry'
require 'sinatra'
require 'sinatra/reloader'
require 'active_record'


#load specific routes
require_relative 'controllers/images' 

#load models
require_relative 'models/image'

#load active_record and connect to db
ActiveRecord::Base.establish_connection({
    database: 'wdinstagram_db',
    adapter: 'postgresql'
  })

#fix sinatra/AR issue
after do 
  ActiveRecord::Base.connection.close
end

#Main route
get '/' do
  erb(:home)
end

binding.pry