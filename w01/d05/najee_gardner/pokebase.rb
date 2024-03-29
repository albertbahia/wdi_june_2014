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
      Pokemon.new("diglett", 50, [:ground]),
      Pokemon.new("dugtrio", 51, [:ground]),
      Pokemon.new("meowth", 52, [:normal]),
      Pokemon.new("persian", 53, [:normal]),
      Pokemon.new("psyduck", 54, [:water]),
      Pokemon.new("golduck", 55, [:water]),
      Pokemon.new("mankey", 56, [:fighting]),
      Pokemon.new("primeape", 57, [:fighting]),
      Pokemon.new("growlithe", 58, [:fire]),
      Pokemon.new("arcanine", 59, [:fire]),
      Pokemon.new("poliwag", 60, [:water]),
      Pokemon.new("poliwhirl", 61, [:water]),
      Pokemon.new("poliwrath", 62, [:water, :fighting]),
      Pokemon.new("abra", 63, [:psychic]),
      Pokemon.new("kadabra", 64, [:psychic]),
      Pokemon.new("alakazam", 65, [:psychic]),
      Pokemon.new("machop", 66, [:fighting]),
      Pokemon.new("machoke", 67, [:fighting]),
      Pokemon.new("machamp", 68, [:fighting]),
      Pokemon.new("bellsprout", 69, [:grass, :poison]),
      Pokemon.new("weepinbell", 70, [:grass, :poison]),
      Pokemon.new("victreebel", 71, [:grass, :poison]),
      Pokemon.new("tentacool", 72, [:water, :poison]),
      Pokemon.new("tentacruel", 73, [:water, :poison]),
      Pokemon.new("geodude", 74, [:rock, :ground]),
      Pokemon.new("graveler", 75, [:rock, :ground]),
      Pokemon.new("golem", 76, [:rock, :ground]),
      Pokemon.new("ponyta", 77, [:fire]),
      Pokemon.new("rapidash", 78, [:fire]),
      Pokemon.new("slowpoke", 79, [:water, :psychic]),
      Pokemon.new("slowbro", 80, [:water, :psychic]),
      Pokemon.new("magnemite", 81, [:electric, :steel]),
      Pokemon.new("magneton", 82, [:electric, :steel]),
      Pokemon.new("farfetch'd", 83, [:normal, :flying]),
      Pokemon.new("doduo", 84, [:normal, :flying]),
      Pokemon.new("dodrio", 85, [:normal, :flying]),
      Pokemon.new("seel", 86, [:water]),
      Pokemon.new("dewgong", 87, [:water, :ice]),
      Pokemon.new("grimer", 88, [:poison]),
      Pokemon.new("muk", 89, [:poison]),
      Pokemon.new("shellder", 90, [:water]),
      Pokemon.new("cloyster", 91, [:water, :ice]),
      Pokemon.new("gastly", 92, [:ghost, :poison]),
      Pokemon.new("haunter", 93, [:ghost, :poison]),
      Pokemon.new("gengar", 94, [:ghost, :poison]),
      Pokemon.new("onix", 95, [:rock, :ground]),
      Pokemon.new("drowsee", 96, [:psychic]),
      Pokemon.new("hypno", 97, [:psychic]),
      Pokemon.new("krabby", 98, [:water]),
      Pokemon.new("kingler", 99, [:water]),
      Pokemon.new("voltorb", 100, [:electric]),
      Pokemon.new("electrode", 101, [:electric]),
      Pokemon.new("exeggute", 102, [:grass, :psychic]),
      Pokemon.new("exeggutor", 103, [:grass, :psychic]),
      Pokemon.new("cubone", 104, [:ground]),
      Pokemon.new("marowak", 105, [:ground]),
      Pokemon.new("hitmonlee", 106, [:fighting]),
      Pokemon.new("hitmonchan", 107, [:fighting]),
      Pokemon.new("lickitung", 108, [:normal]),
      Pokemon.new("koffing", 109, [:poison]),
      Pokemon.new("weezing", 110, [:poison]),
      Pokemon.new("rhyhorn", 111, [:ground, :rock]),
      Pokemon.new("rhydon", 112, [:ground, :rock]),
      Pokemon.new("chansey", 113, [:normal]),
      Pokemon.new("tangela", 114, [:grass]),
      Pokemon.new("kangaskhan", 115, [:normal]),
      Pokemon.new("horsea", 116, [:water]),
      Pokemon.new("seadra", 117, [:water]),
      Pokemon.new("goldeen", 118, [:water]),
      Pokemon.new("seaking", 119, [:water]),
      Pokemon.new("staryu", 120, [:water]),
      Pokemon.new("starmie", 121, [:water, :psychic]),
      Pokemon.new("mr. mime", 122, [:psychic, :fairy]),
      Pokemon.new("scyther", 123, [:bug, :flying]),
      Pokemon.new("jynx", 124, [:ice, :psychic]),
      Pokemon.new("electrabuzz", 125, [:electric]),
      Pokemon.new("magmar", 126, [:fire]),
      Pokemon.new("pinsir", 127, [:water]),
      Pokemon.new("tauros", 128, [:normal]),
      Pokemon.new("magikarp", 129, [:water]),
      Pokemon.new("gyarados", 130, [:water, :flying]),
      Pokemon.new("lapras", 131, [:water, :ice]),
      Pokemon.new("ditto", 132, [:normal]),
      Pokemon.new("eevee", 133, [:normal]),
      Pokemon.new("vaporeon", 134, [:water]),
      Pokemon.new("jolteon", 135, [:electric]),
      Pokemon.new("flareon", 136, [:fire]),
      Pokemon.new("porygon", 137, [:normal]),
      Pokemon.new("omanyte", 138, [:rock, :water]),
      Pokemon.new("omastar", 139, [:rock, :water]),
      Pokemon.new("kabuto", 140, [:rock, :water]),
      Pokemon.new("kabutops", 141, [:rock, :water]),
      Pokemon.new("aerodactyl", 142, [:rock, :flying]),
      Pokemon.new("snorlax", 143, [:normal]),
      Pokemon.new("articuno", 144, [:ice, :flying]),
      Pokemon.new("zapdos", 145, [:electric, :flying]),
      Pokemon.new("moltres", 146, [:fire, :flying]),
      Pokemon.new("dratini", 147, [:dragon]),
      Pokemon.new("dragonair", 148, [:dragon]),
      Pokemon.new("dragonite", 149, [:dragon, :flying]),
      Pokemon.new("mewtwo", 150, [:psychic]),
      Pokemon.new("mew", 151, [:psychic]),
    ]
  end

  def create_pkmn(name_or_id)
    attack = (rand(15) + 1) + 10
    defense = (rand(15) + 1) + 10
    speed = (rand(15) + 1) + 10

    if name_or_id.class == String
      pkmn = (pokemons.select {|pkmn| pkmn.name == name_or_id}).first
    else
      pkmn = (pokemons.select {|pkmn| pkmn.id == name_or_id}).first
    end

    Pokemon.new(pkmn.name, pkmn.id, pkmn.poketype, attack, defense, speed)
  end

end

# poke_mama = Pokebase.new
#
# binding.pry
