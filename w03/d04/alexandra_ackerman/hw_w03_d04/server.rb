require 'sinatra'
require 'sinatra/reloader'
require 'active_record'

#Load specific routes:
require_relative 'controllers/pokemons'
require_relative 'controllers/trainers'

#Load models:
require_relative 'models/pokemon'
require_relative 'models/trainer'

#Load Active Record and connect to the DB:
ActiveRecord::Base.establish_connection({
  database: 'pokemon_db',
  adapter: 'postgresql'
});

after do
  ActiveRecord::Base.connection.close
end

get '/' do
  erb(:home)
end

get '/about' do
  erb(:about)
end
