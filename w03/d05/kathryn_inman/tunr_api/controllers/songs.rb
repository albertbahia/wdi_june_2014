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
post "/songs" do
  new_song = Song.create(params[:song])
  redirect "/songs"
end

get '/search' do
  search_term = params[:song_search]
  @api_call = JSON.parse(HTTParty.get("https://itunes.apple.com/search?term=#{search_term}&entity=song&limit=5"))['results']
  erb(:'songs/search')
end

#show
get "/songs/:id" do
  @song = Song.find(params[:id])
  erb(:'songs/show')
end

# edit
get "/songs/:id/edit" do
  @song = Song.find(params[:id])
  erb(:"songs/edit")
end

# update
post "/songs/:id" do
  song = Song.find(params[:id])
  song.update(params[:song])
  redirect "songs/#{song.id}"
end

# destroy
post "/songs/:id/delete" do
  song = Song.find(params[:id])
  song.destroy
  redirect "/songs"
end
