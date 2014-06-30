################################
# RESTful routes for Pokemons   #
################################

# COLLECTION
# index
get '/pokemons' do
  @pokemons = Pokemon.all
  erb(:"pokemons/index")
end

# new
get '/pokemons/new' do

end

# create
post '/pokemons' do

end

# MEMBER
# show
get '/pokemons/:id' do
  @pokemon = Pokemon.find(params[:id])
  erb(:"pokemons/show")
end

# edit
get '/pokemons/:id/edit' do

end

# update
post '/pokemons/:id' do

end

# destroy
post '/pokemons/:id/delete' do

end
