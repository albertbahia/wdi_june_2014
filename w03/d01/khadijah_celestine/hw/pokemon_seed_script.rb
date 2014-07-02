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


# dont need extra array just create the pokemons from here
# its better to change numbers into integers here before you put them in the data base
pokemons.each do |pokemon|
  poke = Pokemon.create({
    :name => pokemon[:name],
    :hp => pokemon[:stats][:hp],
    :attack => pokemon[:stats][:attack],
    :defense => pokemon[:stats][:defense],
    :speed => pokemon[:stats][:speed],
    :moves => pokemon[:moves][:level].map { |move| move[:name].capitalize }.join(' | '),
    #:moves => moves_string(pokemon[:moves]),
    :image_url => pokemon[:img],
    :classification => pokemon[:misc][:classification],
    :species => pokemon[:type].join(" "),
    :height => pokemon[:misc][:height],
    :happiness => pokemon[:misc][:happiness]
  })

end
#
# #movesss = filtered_pokemons[0]
#
# filtered_pokemons.each do |p|
#
#     id: p[:id], # don't need an id because posgres will give it an id when create or save is called
#     name: p[:name],
#     hp: p[:hp],
#     attack: p[:attack],
#     defense: p[:defense],
#     speed: p[:speed],
#     image_url: p[:img_url],
#     classification: p[:classification],
#     species: p[:species],
#     height: p[:height],
#     happiness: p[:happiness]
#     #remember, the keys of this hash in create MUST match with the fields of db
#     })
#     poke.save # redundant. only use save when you create
# end
#
# puts filtered_pokemons
