def caps(coll)
	new_coll = coll.map do |element|
		element.capitalize
	end
	new_coll.join(' ')
end

thing = [
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

thing.each_with_index do |item, index|
	puts
	puts "#{thing[index][:name]} | #{thing[index][:national_id]} | #{caps(thing[index][:species].split)} | #{thing[index][:weight]} // #{thing[index][:types][0][:type_a]} #{thing[index][:types][0][:type_b]}"
# #{thing[index][:types][:type_b]}"
end
