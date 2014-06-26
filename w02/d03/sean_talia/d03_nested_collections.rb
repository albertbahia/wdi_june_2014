# Morning Exercise, w02 d03

poke_array = [
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

def pokemon_returner(poke_hash_array)
  poke_hash_array.map do |poke_hash|
    return_string = "Name: #{poke_hash[:name]} | National ID: #{poke_hash[:national_id]} \n"
    species = poke_hash[:species].split.map(&:capitalize).join(' ')
    return_string += "Species: #{species} | Weight: #{poke_hash[:weight]} \n"
    return_string += "Type A: #{poke_hash[:types][0][:type_a].capitalize} // "
    return_string += "Type B: #{poke_hash[:types][0][:type_b].capitalize}\n"
  end
end

puts "~" * 40
pokemon_returner(poke_array).each do |poke_description|
  puts poke_description
  puts "~" * 40
end
