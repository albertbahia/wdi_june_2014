# index
get "/pokemons" do
  @pokemons = Pokemon.all
  erb(:"pokemons/index")
end

# show
get "/pokemons/:id" do
  @pokemons = Pokemon.find(params[:id])
  erb(:"pokemons/show")
end
