def list_pkmn_info(pkmn_arr)
  pkmn_info = ""

  pkmn_arr.each do |pkmn|
    pkmn_info << pkmn[:name] + " | "
    pkmn_info << pkmn[:national_id].to_s + "\n"
    pkmn_info << pkmn[:species].split.map(&:capitalize).join(" ")
    pkmn_info << " | "
    pkmn_info << pkmn[:weight] + "\n"
    pkmn_info << pkmn[:types].first[:type_a] + "//" + pkmn[:types].first[:type_b]
    pkmn_info << "\n\n"
  end

  pkmn_info += "\n"
end

pkmn_arr = [
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

puts list_pkmn_info(pkmn_arr)
