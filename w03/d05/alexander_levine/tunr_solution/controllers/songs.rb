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
  @song = Song.create!(params[:song])
  redirect("/songs/#{@song.id}")
end

get "/songs/search" do
  keyword = params[:search]
  @search = JSON.parse(HTTParty.get(URI.escape("https://itunes.apple.com/search?
  term=#{keyword}&entity=song&limit=10")))
  erb(:"songs/search")
end

post "/songs/search" do
  artist = Artist.find_or_create_by(@search["results"]["artistName"])
  song = Song.create!({
    title: @search["results"]["trackName"],
    artist_id: artist[:id]
    })
    redirect("/songs/#{@song.id}")
end

#show
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
