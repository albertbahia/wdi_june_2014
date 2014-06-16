require 'pry'
require_relative 'pokemon.rb'

class Trainer
  attr_reader :name, :hometown, :age, :pokemons

  def initialize(name, age, hometown, pokemons=[])
    @name = name
    @age  = age
    @hometown = hometown
    @pokemons = pokemons
  end

  def list_pkmn
    pkmn_list = ""
    pokemons.each_with_index do |pkmn, i|
      pkmn_list << "#{i+1}. #{pkmn.name.capitalize}\n"
    end

    pkmn_list
  end

  def info
    trainer_info = "Trainer #{name.capitalize}\n"
    trainer_info << "-" * 15 + "\n"
    trainer_info << "Age: #{age}/Town: "
    trainer_info << "#{(hometown.split.map {|word| word.capitalize}).join(" ")}"
  end

  def get_pkmn(pkmn_name)
    (pokemons.select { |pkmn| pkmn.name == pkmn_name }).first
  end

  def pkmn_info(pkmn_name=:all)
    pkmn_stats = ""

    if pkmn_name == :all
      pokemons.each do |pkmn|
        pkmn_stats << pkmn.list_stats + "\n"
      end
    else
      pkmn_stats = get_pkmn(pkmn_name).list_stats
    end

    pkmn_stats
  end

  def add_pkmn(pkmn)
    if pokemons.length < 6
      @pokemons << pkmn
      true
    else
      false
    end
  end

end

# pikachu = Pokemon.new("pikachu", 25, ["electric"], 23, 56, 75)
# squirtle = Pokemon.new("squirtle", 7, ["water"], 36, 74, 23)
# ash = Trainer.new("ash", 10, "Pallet Town")
#
# pikachu.take_damage(25)
# squirtle.take_damage(99)
#
# binding.pry
