# COLLECTION
# index
get '/playlists' do
  @playlists = Playlist.all
  erb(:"playlists/index")
end

# new
get '/playlists/new' do
  erb(:"playlists/new")
end

# create
post '/playlists' do
  new_playlist = Playlist.create(params[:playlist])
  redirect("/playlists/#{new_playlist.id}")
end

# add song => update playlist
post '/playlists/:id' do
  playlist = Playlist.find(params[:id])
  playlist.update(params[:playlist])
  redirect("/playlists/#{playlist.id}")
end

# remove song => ?? removes playlist:
post '/playlists/:id/delete' do
  playlist = Playlist.find(params[:id])
  playlist.destroy
  redirect('/playlists')
end
