###  RESTful routes for Pokemons  ###


# COLLECTION
# index
get '/pokemons' do
  @pokemons = Pokemon.all
  erb(:"pokemons/index")
end

# MEMBER
# show
get '/pokemons/:id' do
  @pokemon = pokemon.find(params[:id])
  erb(:"pokemons/show")
end
