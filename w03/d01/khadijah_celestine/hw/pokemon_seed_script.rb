require_relative 'pokemon_seed.rb'
require_relative './pokemon'
pokemons = get_pokemon



############# Next steps create new array with every line of array is a new pokemon with the
#### data ready for inputing in database

def moves_string(moves)
  str = ""
  moves.each do |move|
    str += "TITLE: #{move[0]} \n"
    move[1].each do |pair|
      pair_str = ""
      if pair.keys.include?(:learnedat) && pair.keys.include?(:name) && pair.keys.include?(:gen)
        str += "Learned at: #{pair[:learnedat]}  Name: #{pair[:name]}  Gen: #{pair[:gen]} \n"
      elsif pair.keys.include?(:name) && pair.keys.include?(:gen)
        str += "Name: #{pair[:name]}  Gen: #{pair[:gen]} \n"
      elsif pair.keys.include?(:name) && pair.keys.include?(:method)
        str += "Name: #{pair[:name]}  Gen: #{pair[:method]} \n"
      end
    end
  end
  str
end


filtered_pokemons = []

pokemons.each do |pokemon|
  filtered_pokemons.push(
  {
    :id => pokemon[:id],
    :name => pokemon[:name],
    :hp => pokemon[:stats][:hp],
    :attack => pokemon[:stats][:attack],
    :defense => pokemon[:stats][:defense],
    :speed => pokemon[:stats][:speed],
    #moves_string(pokemon[:moves]) #needs method
    :img_url => pokemon[:img],
    :classification => pokemon[:misc][:classification],
    :species => pokemon[:type].join(" "),
    :height => pokemon[:misc][:height],
    :happiness => pokemon[:misc][:happiness]
  }
  )

end

#movesss = filtered_pokemons[0]

filtered_pokemons.each do |p|
  puts
  poke = Pokemon.create({
    id: p[:id],
    name: p[:name],
    hp: p[:hp],
    attack: p[:attack],
    defense: p[:defense],
    speed: p[:speed],
    image_url: p[:img_url],
    classification: p[:classification],
    species: p[:species],
    height: p[:height],
    happiness: p[:happiness]

    })
    poke.save
end
#puts moves_string movesss
