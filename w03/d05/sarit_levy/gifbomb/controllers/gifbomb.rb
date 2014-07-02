###  RESTful routes for GifBomb  ###


# COLLECTION
# index
get '/gifbomb' do
  @gifbombs = GifBomb.all
  erb(:"gifbombs/index")
end

# MEMBER
# show
get '/gifbomb/:id' do
  @gifbomb = gifbomb.find(params[:id])
  erb(:"gifbombs/show")
end
