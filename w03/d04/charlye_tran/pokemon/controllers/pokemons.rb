# COLLECTION

# index
get '/pokemons' do
  @pokemons = Pokemon.all
  erb(:"pokemons/index")
end

#MEMBER
get '/pokemons/:id' do
  @pokemon = Pokemon.find(params[:id])
  erb(:"pokemons/show")
end
