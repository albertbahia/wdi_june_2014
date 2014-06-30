require 'sinatra'
require 'sinatra/reloader'
require 'active_record'

require_relative 'controllers/pokemons'
require_relative 'controllers/trainers'

require_relative 'models/pokemon'
require_relative 'models/trainer'

ActiveRecord::Base.establish_connection({
  database: 'pokemon_db',
  adapter: 'postgresql'
})

after do
  ActiveRecord::Base.connection.close
end

get '/' do
  erb(:home)
end
