# Given the array below define a method that returns a string with the following information:
# - The name of each Pokemon and it's ID number separated by a `|`
# - The species with every word capitalized and the weight separated by a `|`
# - The types separated by a `//`

pokemon = [
  {
    :name => "Bulbasaur",
    :national_id => 1,
    :sp_atk => 65,
    :sp_def => 65,
    :species => "seed pokemon",
    :speed => 45,
    :types =>
    [  { :type_a => "grass", :type_b => "poison"  }  ],

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
    :types =>
    [ { :type_a => "fire", :type_b => "lizard" }],

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
    :types=>
    [ { :type_a => "water", :type_b => "turtle" } ],

    :weight=> "90lbs"
  }
]

#This is the definition to get the info we need from the array and hashes. Asking to iterate through the collection, define the information in this way (to parse it or organize it in a particular way) and then we will ask for it to be called with the definitions we created.
  def poke_parser(poke_info) #this is asking it to iterate over the array
    all_pokemon = poke_info.map do |poke_hash| #poke_info refers to the information in the array that is then nested by hashes within the array.  We created name 'poke_hash' to refer to the hashes within the array.
      name = poke_hash[:name]  #the pipes |poke_hash| asks for iteration from each of the hashes within the array
      id = poke_hash[:national_id]
      species = poke_hash[:species].split.map {|word| word.capitalize}.join(' ')
      weight = poke_hash[:weight]
      types = poke_hash[:types][0].values.join(' // ')

  #now we ask a get method to obtain the information we want to receive and the way we want it presented:
      info_string = "#{name} | #{id}\n"
      info_string += "Species: #{species} | Weight: #{weight}\n" # the '+=' adds the previous info string to the current so they are all returned in this format
      info_string += "Types: #{types}"
    end

  all_pokemon.join("\n\n")
  end

puts poke_parser(all_pokemon) #this is the call method.  We are getting the information from the array with the definitions we defined.
