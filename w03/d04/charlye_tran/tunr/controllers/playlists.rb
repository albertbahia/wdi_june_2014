# index
get "/playlists" do
  @playlists = Playlist.all
  erb(:"playlists/index")
end

# new
get "/playlists/new" do
  erb(:"playlists/new")
end

# add playlist
post "/playlists" do
  new_playlist = Playlist.create(params[:playlist])
  redirect("playlists/#{new_playlist.id}")
end

#show
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


get "/playlists/:id/add_song"

#add song to playlist
post "/playlists/:id/add_song" do
redirect

end

# remove playlist
post "/playlists/:id/delete" do
  playlist = Playlist.find(params[:id])
  playlist.destroy
  redirect('/playlists')
end
