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

# show
get '/playlists/:id' do
  @playlist = Playlist.find(params[:id])
  erb(:"playlists/show")
end

# add song
  @new_song = Song.find(params[:id])
# remove song

# destroy
post "/playlists/:id/delete" do
  playlist = Playlist.find(params[:id])
  playlist.destroy
  redirect('/playlists')
end
