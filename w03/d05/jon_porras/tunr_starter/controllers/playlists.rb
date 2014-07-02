
#COLLECTION
# index
get "/playlists" do
  @playlists = Playlist.all
  erb(:"playlists/index")
end

#new
get "/playlists/new" do
  erb(:"playlists/new")
end

# create
post "/playlists" do
  new_playlist = Playlist.create(params[:playlist])
  redirect("/playlists/#{new_playlist.id}")
end

# #MEMBER
# #show
get "/playlists/:id" do
  @playlist = Playlist.find(params[:id])
  erb(:"playlists/show")
end

# edit
get "/playlists/:id/edit" do
  @playlist = Playlist.find(params[:id])
  erb(:"playlists/edit")
end

# update
put "/playlists/:id" do
  playlist = Playlist.find(params[:id])
  playlist.update(params[:playlist])
  redirect("/playlists/#{playlist.id}")
end

post "/playlist/:id/:song" do
  playlist = Playlist.find(params[:id])
  playlist << params[:song]
  redirect("/playlists/#{playlist.id}")
end

# destroy
post "/playlists/:id/delete" do
  playlist = Playlist.find(params[:id])
  playlist.destroy
  redirect('/playlists')
end
