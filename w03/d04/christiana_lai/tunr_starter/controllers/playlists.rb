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

# new

# add song

# remove song
