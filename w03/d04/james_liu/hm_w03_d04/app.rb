require 'sinatra'
require 'sinatra/reloader'
require 'active_record'

# Load specific routes
require_relative 'controllers/trainers'
require_relative 'controllers/pokemons'

# Load models
require_relative 'models/trainer'
require_relative 'models/pokemon'

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

get '/about' do
  erb(:about)
end


