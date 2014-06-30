# ----- COLLECTION -----

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
get '/playlists' do
  new_playlist = Playlist.create(params[:playlist])
  redirect("/playlists/#{new_playlist.id}")
end

# ----- MEMBER -----

# show
get '/playlists/:id' do
  @playlists = Playlist.find(params[:id])
  erb(:"playlists/show")
end

# ----- OTHER -----

# add song
# post '/playlists/:id/add_song' do
#   playlist = Playlist.create(params[:playlist])
#   song_title = params[:title]
#   artist_name = params[:name]
#   new_song = {
#     title: song_title,
#     name: artist_name
#   }
#   playlist << new_song
#   redirect('/playlists/:id')
# end

# remove song
