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
  if params[:song][:artist_id].to_i == 0
    artist = Artist.find_by({name: params[:song][:artist_id]})
    if !artist
      artist = Artist.create({
        name: params[:song][:artist_id],
        nationality: params[:artist_country]
      })
    end
    params[:song][:artist_id] = artist.id
  end
  song = Song.where("title = '#{params[:song][:title]}' AND artist_id = '#{params[:song][:artist_id]}'")
  if !song.first
    song = [Song.create!(params[:song])]
  end

  redirect("/songs/#{song.first.id}")
end

#show
get '/songs/search' do
  search_term = params[:user_search]
  @search_songs = ITunes.search(search_term)
  erb :"songs/search"
end

get "/songs/:id" do
  @song = Song.find(params[:id])
  erb(:"songs/show")
end

# edit
get "/songs/:id/edit" do
  @song = Song.find(params[:id])
  erb(:"songs/edit")
end

# update
put "/songs/:id" do
  @song = Song.update!(params[:song])
  redirect("/songs/#{@song.id}")
end

# destroy
post "/songs/:id/delete" do
  @song = Song.find(params[:id])
  erb(:"songs/index")
end
