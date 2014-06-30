require 'sinatra'
require 'sinatra/reloader'
require 'active_record'

#load specific routes/controllers:
require_relative 'controllers/images'

#load models
require_relative 'models/image.rb'

#Load active record to connect to DB
ActiveRecord::Base.establish_connection({
  database: 'wdinstagram_db',
  adapter: 'postgresql'
})

get '/' do
  erb(:home)
end

get '/about' do
  erb(:about)
end

after do
  ActiveRecord::Base.connection.close
end
