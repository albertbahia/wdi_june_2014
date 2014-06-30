require 'sinatra'
require 'sinatra/reloader'
require 'active_record'

require_relative 'controllers/pokemons'
require_relative 'controllers/trainers'

require_relative 'models/pokemon.rb'
require_relative 'models/trainer.rb'

ActiveRecord::Base.establish_connection({
  database: 'pokemon_db',
  adapter: 'postgresql'
})

after do
  ActiveRecord::Base.connection.close
end

get '/'do 
	erb(:home)
end 

get '/trainers' do
  erb(:"trainers/index")
end	

get '/pokemons' do
  erb(:"pokemons/index")
end

