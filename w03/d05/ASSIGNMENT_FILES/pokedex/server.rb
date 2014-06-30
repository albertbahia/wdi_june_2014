require 'sinatra'
require 'sinatra/reloader'
require 'active_record'
require_relative './controllers/pokemons_controller'
require_relative './controllers/trainers_controller'
require_relative './models/pokemon'
require_relative './models/trainer'

ActiveRecord::Base.establish_connection({
  adapter: 'postgresql',
  database: 'pokemon_db'
})


get('/') do
  erb :welcome  
end

after { ActiveRecord::Base.connection.close }