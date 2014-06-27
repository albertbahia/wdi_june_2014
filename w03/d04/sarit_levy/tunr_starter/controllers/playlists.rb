# index
get "/playlists" do
  @playlists = Playlist.all
  erb(:"playlists/index")
end

# new
get "/playlists/new" do
  erb(:"playlists/new")
end

# create
post "/playlists" do
  new_playlist = Playlist.create(params[:playlist])
  redirect("/playlists/#{new_playlist.id}")
end

#show
get "/playlists/:id" do
  @playlist = Playlist.find(params[:id])
  erb(:"playlists/show")
end

# new
get "/playlists/new" do
  erb(:"playlists/new")
end

# add playlist
put "/playlists/:id" do
  playlist = Playlist.find(params[:id])
  playlist.update(params[:playlist])
  redirect("/playlists/#{playlist.id}")
end
# remove playlist
