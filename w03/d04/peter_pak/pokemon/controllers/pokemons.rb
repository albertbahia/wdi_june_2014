get '/pokemons' do
  @pokemon = Pokemon.all
  erb(:"pokemons/index")
end

get '/pokemons/:id' do
  @pokemon = Pokemon.find(params[:id])
  erb(:"pokemons/show")
end
