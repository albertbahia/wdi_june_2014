# index
get "/playlists" do
  @playlists = Playlist.all
  erb(:"playlists/index")
end
# new
get "/playlists/new" do
  erb(":playlists/new")
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
post '/playlists/add' do
  new_song = Song.create(params[:song])
  redirect("/songs/#{new_song.id}")
end

# remove song



# MEMBER
# show
get '/artists/:id' do
  @artist = Artist.find(params[:id])
  erb(:"artists/show")
end

# edit
get '/artists/:id/edit' do
  @artist = Artist.find(params[:id])
  erb(:"artists/edit")
end

# update
post '/artists/:id' do
  artist = Artist.find(params[:id])
  artist.update(params[:artist])
  redirect("/artists/#{artist.id}")
end

# destroy
post '/artists/:id/delete' do
  artist = Artist.find(params[:id])
  artist.destroy
  redirect('/artists')
end
