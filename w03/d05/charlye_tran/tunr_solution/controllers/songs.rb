# index

get "/songs" do
  @songs = Song.all
  erb(:"songs/index")
end

# new
get "/songs/new" do
  erb(:"songs/new")
end

# create
post "/songs" do
  @song = Song.create!(params[:song])
  redirect("/songs/#{@song.id}")
end

#show
get "/songs/:id" do
  @song = Song.find(params[:id])
  erb(:"songs/show")
end

get "/songs/search" do
  search_term = params[:search]
  @api_call = Song.search(search_term)
  erb(:"songs/search")
end

# edit
get "/songs/:id/edit" do
  @song = Song.find(params[:id])
  erb(:"songs/edit")
end

# update
put "/songs/:id" do
  @song = Song.update!(params[:song])
  redirect("/songs/#{@song.id}")
end

# destroy
post "/songs/:id/delete" do
  @song = Song.find(params[:id])
  erb(:"songs/index")
end
