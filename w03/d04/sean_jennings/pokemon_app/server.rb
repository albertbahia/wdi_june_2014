require 'sinatra'
require 'sinatra/reloader'
require 'active_record'

#load specific routes
require_relative 'controllers/pokemons'
require_relative 'controllers/trainers'

#load models
require_relative 'models/pokemon'
require_relative 'models/trainer'

#load active record and connect to database
ActiveRecord::Base.establish_connection({
    database: 'pokemon_db',
    adapter: 'postgresql'
})

#fix for a sinatra issue
after do
  ActiveRecord::Base.connection.close
end

get '/' do
  erb(:home)
end
