require 'sinatra'
require 'sinatra/reloader'
require 'active_record'

# Load specific routes
require_relative 'controllers/pokemons'
require_relative 'controllers/trainers'

# Load models
require_relative 'models/pokemons'
require_relative 'models/trainers'

# Load Active Record and connect to the DB
ActiveRecord::Base.establish_connection({
  database: 'pokemon_db',
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


