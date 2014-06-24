require 'active_record'
require 'pry'
require_relative 'lib/pokemon.rb'
require_relative 'lib/pokemon_seed.rb'

ActiveRecord::Base.establish_connection({
  database: 'pokemon_db',
  adapter: 'postgresql'
  })

# - All pokemon in the database
Pokemon.all.each { |pokemon| puts pokemon.name }
# - The id of the pokemon named Onix
onix_pokemon = Pokemon.find_by({name: "Onix"})
onix_pokemon.id
# - The name of the pokemon with an id of 89
eighty_nine = Pokemon.find_by( { id: 89 } )
eighty_nine.name
# - Find the pokemon with the name 'Nidoran?'.
Pokemon.where( {name: 'Nidoran?' })
# Change the name of the first pokemon returned to 'Nidoran - male',
male = Pokemon.where( {id: 29} )
male.update({name: 'Nidoran - male'})
#and the name of the second pokemon returned to 'Nidoran - female'.
female = Pokemon.where( { id: 32 } )
female.update( { name: 'Nidoran - female' } )
# - Only the hp of the first 35 pokemon
Pokemon.all.first(35)
# - All pokemon with a speed less than 25 and attack over 30
Pokemon.where('speed < 25', 'attack > 30').only(:where)
Pokemon.where('speed _lt 25', 'attack _gt 30')
order('speed ASC, created_at ASC')
# - The 5 pokemon with the highest happiness level.
Pokemon.limit(5).order(happiness: :desc)
# - All pokemon ordered by hp from lowest to highest
Pokemon.order(hp: :asc)


binding.pry
