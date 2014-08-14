# index
get "/playlists" do 
	@playlists = Playlist.all
	erb(:"playlists/index")
end 

# new
get "/playlists/new" do 
	erb(:"playlists/new")
end 

# # create
post '/playlists' do
  new_playlist = Playlist.create(params[:playlists])
  redirect("/playlists/#{new_playlist.id}")
end

get '/playlists/:id' do
  @playlist = Playlist.find(params[:id])
  erb(:"playlists/show")
end

# # add song



# # remove song
