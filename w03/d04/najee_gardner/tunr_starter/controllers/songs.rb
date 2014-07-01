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
  new_song = Song.create(params[:song])
  redirect("/songs/#{new_song.id}")
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
post "/songs/:id" do
  update_song = Song.find(params[:id])
  update_song.update(params[:song])
  redirect("/songs/#{update_song.id}")
end

# destroy
post "/songs/:id/delete" do
  song = Song.find(params[:id])
  song.destroy
  redirect('/songs')
end
