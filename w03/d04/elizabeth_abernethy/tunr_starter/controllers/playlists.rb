# ----- COLLECTION -----

# index
get '/playlists' do
  @playlist = Playlist.all
  erb(:"playlists/index")
end

# new
get '/playlists/new' do
  erb(:"playlists/new")
end

# create
get '/playlists' do
  new_playlist = Playlist.create(params[:playlist])
  redirect("/playlists/#{new_playlist.id}")
end

# ----- MEMBER -----

# show
get '/playlists/:id' do
  @playlist = Playlist.find(params[:id])
  erb(:"playlists/show")
end

# ----- OTHER -----

# add song

# remove song
