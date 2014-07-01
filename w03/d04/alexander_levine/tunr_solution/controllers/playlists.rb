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
  @playlist = Playlist.create!(params[:playlist])
  redirect("/playlists/#{@playlist.id}")
end

# new
get "/playlists/:id" do
  @playlist = Playlist.find(params[:id])
  erb(:"playlists/show")
end

# add song
post "/playlists/:id/add_song" do
  @playlist = Playlist.find(params[:id])
  @playlist.songs << Song.find(params[:song_id])
  redirect("/playlists/#{@playlist.id}")
end

# remove song
post "/playlists/:id/remove_song" do
  @playlist = Playlist.find(params[:id])
  @playlist.songs.delete(Song.find(params[:song_id]))
  redirect("/playlists/#{@playlist.id}")
end
