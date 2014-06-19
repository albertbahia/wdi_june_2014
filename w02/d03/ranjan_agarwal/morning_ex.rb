poke = [
  {
    :name => "Bulbasaur",
    :national_id => 1,
    :sp_atk => 65,
    :sp_def => 65,
    :species => "seed pokemon",
    :speed => 45,
    :types => [
      {
        :type_a => "grass",
        :type_b => "poison"
      }
    ],
    :weight => "15.2lbs"
  },
  {
    :name => "Charmander",
    :national_id => 4,
    :pkdx_id => 4,
    :sp_atk => 60,
    :sp_def => 50,
    :species => "flammable pokemon",
    :speed => 65,
    :types => [
      {
        :type_a => "fire",
        :type_b => "lizard"
      }
    ],
    :weight => "85lbs"
  },
  {
    :name=> "Squirtle",
    :national_id=> 7,
    :pkdx_id=> 7,
    :sp_atk=> 50,
    :sp_def=> 64,
    :species=> "water pokemon",
    :speed=> 43,
    :types=> [
      {
        :type_a => "water",
        :type_b => "turtle"
      }
    ],
    :weight=> "90lbs"
  }
]
# poke.each do |a|
#   a.map do |k,v|
#     #  k.each do |k,v|
#        puts "#{k} | #{v} | #{k} #{v}"
#     #  end
#   end
# end

def poke_parser(poke_info)
  all_pokemon = poke_info.map do |poke_hash|
    name = poke_hash[:name]
    id = poke_hash[:national_id]
    species = poke_hash[:species].split.map {|word| word.capitalize}.join(" ")
    weight = poke_hash[:weight]
    types = poke_hash[:types][0].values.join(' // ')

  info_string = "#{name} | #{id}\n"
  info_string += "Species: #{species} |  Weight: #{weight}\n"
  info_string += "Types: #{types}"
  end

  all_pokemon.join("\n\n")
end

puts poke_parser(poke)
