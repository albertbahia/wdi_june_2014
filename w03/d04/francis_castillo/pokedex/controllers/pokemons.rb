################################
# RESTful routes for Pokemons   #
################################

#Collection
#index
get '/pokemons' do
  @pokemons = Pokemon.all
  erb(:"pokemons/index")
end

# MEMBER
# show
get '/pokemons/:id' do
  @pokemon = Pokemon.find(params[:id])
  erb(:"pokemons/show")
end
