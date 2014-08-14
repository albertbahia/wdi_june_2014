# index
get "/songs" do
  @songs = Song.all
  erb(:"songs/index")
end

# new
get "/songs/new" do
  erb(:"songs/new")
end

get "/search" do
  search_terms = params[:search]
  @api_call = JSON.parse(HTTParty.get(URI.escape("https://itunes.apple.com/search?term=#{search_terms}&limit=10")))
  erb(:"search")
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
