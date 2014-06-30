require 'sinatra'
require 'sinatra/reloader'
require 'active_record'

# Require routes
require_relative 'controllers/pokemons'
require_relative 'controllers/trainers'

# Require Models
require_relative 'models/pokemon'
require_relative 'models/trainer'

# Load Active Record
ActiveRecord::Base.establish_connection({
  database: 'pokemon_db',
  adapter: 'postgresql'
})

after do
  ActiveRecord::Base.connection.close
end

# General Routes
get '/' do
  erb(:home)
end
