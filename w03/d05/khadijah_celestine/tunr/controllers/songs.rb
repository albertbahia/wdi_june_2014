################################
# RESTful routes for Artists   #
################################
require_relative '../itunes'
get '/search' do
	@songs = Itunes.search(params[:search])
	erb(:"songs/search")
end


# COLLECTION
# index
get "/songs" do
	@songs = Song.all
	erb(:"songs/index")
end

# new
get "/songs/new" do
	erb(:"songs/new")
end

# create
post '/songs' do
	new_song = Song.create(params[:song])
	redirect("/songs/#{new_song.id}")
end

#show
get "/songs/:id" do
	@artist = Artist.find(Song.find(params[:id]).artist_id)
	@song = Song.find(params[:id])
	erb(:"songs/show")
	#params[:title]
end

# edit
get '/songs/:id/edit' do
	@song = Song.find(params[:id])
	erb(:"songs/edit")
end

# update
post '/songs/:id' do
	song = Song.find(params[:id])
	song.update(params[:song])
	redirect("/songs/#{song.id}")
end

# destroy
post '/songs/:id/delete' do
	songs = Song.find(params[:id])
	songs.destroy
	redirect('/songs')
end
