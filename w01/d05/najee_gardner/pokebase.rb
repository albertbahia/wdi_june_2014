require 'pry'
require_relative 'pokemon.rb'

class Pokebase
  attr_reader :pokemons

  def initialize
    @pokemons = [
      Pokemon.new("bulbasaur", 1, [:grass, :poison]),
      Pokemon.new("ivysaur", 2, [:grass, :poison]),
      Pokemon.new("venusaur", 3, [:grass, :poison]),
      Pokemon.new("charmander", 4, [:fire]),
      Pokemon.new("charmeleon", 5, [:fire]),
      Pokemon.new("charizard", 6, [:fire, :flying]),
      Pokemon.new("squirtle", 7, [:water]),
      Pokemon.new("wartortle", 8, [:water]),
      Pokemon.new("blastoise", 9, [:water]),
      Pokemon.new("caterpie", 10, [:bug]),
      Pokemon.new("metapod", 11, [:bug]),
      Pokemon.new("butterfree", 12, [:bug, :flying]),
      Pokemon.new("weedle", 13, [:bug, :poison]),
      Pokemon.new("kakuna", 14, [:bug, :poison]),
      Pokemon.new("beedrill", 15, [:bug, :poison]),
      Pokemon.new("pidgey", 16, [:normal, :flying]),
      Pokemon.new("pidgeotto", 17, [:normal, :flying]),
      Pokemon.new("pidgeot", 18, [:normal, :flying]),
      Pokemon.new("rattata", 19, [:normal]),
      Pokemon.new("raticate", 20, [:normal]),
      Pokemon.new("spearow", 21, [:normal, :flying]),
      Pokemon.new("fearow", 22, [:normal, :flying]),
      Pokemon.new("ekans", 23, [:poison]),
      Pokemon.new("arbok", 24, [:poison]),
      Pokemon.new("pikachu", 25, [:electric]),
      Pokemon.new("raichu", 26, [:electric]),
      Pokemon.new("sandshrew", 27, [:ground]),
      Pokemon.new("sandslash", 28, [:ground]),
      Pokemon.new("nidoran(f)", 29, [:poison]),
      Pokemon.new("nidorina", 30, [:poison]),
      Pokemon.new("nidoqueen", 31, [:poison, :ground]),
      Pokemon.new("nidoran(m)", 32, [:poison]),
      Pokemon.new("nidorino", 33, [:poison]),
      Pokemon.new("nidoking", 34, [:poison, :ground]),
      Pokemon.new("clefairy", 35, [:fairy]),
      Pokemon.new("clefable", 36, [:fairy]),
      Pokemon.new("vulpix", 37, [:fire]),
      Pokemon.new("ninetales", 38, [:fire]),
      Pokemon.new("jigglypuff", 39, [:normal, :fairy]),
      Pokemon.new("wigglytuff", 40, [:normal, :fairy]),
      Pokemon.new("zubat", 41, [:poison, :flying]),
      Pokemon.new("golbat", 42, [:poison, :flying]),
      Pokemon.new("oddish", 43, [:grass, :poison]),
      Pokemon.new("gloom", 44, [:grass, :poison]),
      Pokemon.new("vileplume", 45, [:grass, :poison]),
      Pokemon.new("paras", 46, [:bug, :grass]),
      Pokemon.new("parasect", 47, [:bug, :grass]),
      Pokemon.new("venonat", 48, [:bug, :poison]),
      Pokemon.new("venomoth", 49, [:bug, :poison]),
      Pokemon.new("diglett", 50, [:ground])
    ]
  end
end

poke_mama = Pokebase.new

binding.pry
