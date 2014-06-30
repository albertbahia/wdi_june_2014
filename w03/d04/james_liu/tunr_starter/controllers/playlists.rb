# index
get '/playlists' do
    @playlists = Playlist.all
    erb(:"playlists/index")
    
# show
get '/playlists/:id' do
  @playlist = Playlist.find(params[:id])
  erb(:"playlists/show")
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

# add song

# remove song

# edit
get '/playlists/:id/edit' do
  @playlist = Playlist.find(params[:id])
  erb(:"playlists/edit")
end

# update
post '/playlists/:id' do
  artist = Artist.find(params[:id])
  artist.update(params[:playlist])
  redirect("/playlists/#{playlist.id}")
end

# destroy
post '/playlists/:id/delete' do
  playlist = Playlist.find(params[:id])
  playlist.destroy
  redirect('/playlists')
end
