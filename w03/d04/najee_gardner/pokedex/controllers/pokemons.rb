#index
get '/pokemons' do
  erb(:"pokemons/index")
end

#show
get '/pokemons/:id' do
  @pokemon = Pokemon.find(params[:id])
  erb(:"pokemons/show")
end
