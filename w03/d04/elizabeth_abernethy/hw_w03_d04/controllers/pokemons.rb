# Define an index route for your Pokemon controller
# The index route should display all pokemon stored in your database
# Each displayed pokemon should have a link that will take you to that pokemon's individual page

# Define a show route
# The show route should display all information related to that individual pokemon
# There should be a link displayed that will allow a user to navigate back to the pokemon index page.


# index
get '/pokemons' do
  @pokemons = Pokemon.all
  erb(:"pokemons/index")
end

# show
get '/pokemons/:id' do
  @pokemons = Pokemon.find(params[:id])
  erb(:"pokemons/show")
end
