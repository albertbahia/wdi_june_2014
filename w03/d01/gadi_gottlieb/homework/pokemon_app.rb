require 'active_record'
require 'pry'
require_relative 'pokemon_seed.rb'
require_relative 'pokemon.rb'


ActiveRecord::Base.establish_connection({
  database: 'pokemon_db',
  adapter: 'postgresql'
})


binding.pry

# All pokemon
all_pokemon = Pokemon.all

#id of Onix
onix = Pokemon.find_by({name: "Onix"})

#id of pokemon with 89
id_89 = Pokemon.find(89)

# Find the Nidorans and change the first to nidoran-male and 2nd to nidoran - female

Pokemon.where({name: "Nidoran?"})

nido_man = Pokemon.find(29)
nido_man.update(name: "Nidoran - male")

nido_female = Pokemon.find(32)
nido_female.update(name: "Nidoran - female")

# Find the hp of the first 35 pokemon
Pokemon.where(id: [1..35]).pluck(:hp)

# Find all pokemon with a speed less than 25 and attack over 30
Pokemon.where("speed < 25 AND attack > 30")

# 5 pokemon with highest happiness level
happy_order = Pokemon.order(happiness: :desc)
top_5_happiest = happy_order.limit(5)

# All pokemon order by hp from lowest to highest
Pokemon.order('hp')
