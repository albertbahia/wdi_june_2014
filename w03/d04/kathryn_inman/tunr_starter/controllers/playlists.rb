# index
get "/playlists" do
  @playlists = Playlist.all
  erb(:'playlists/index')
end

# show
get "playlists/:id" do
  @playlist = Playlist.find(params[:id])
  erb(:"playlists/show")
end

# #----
# # new
# get "/playlists/new" do
#   erb(:'playlists/new')
# end
#
# # create
# post "/playlists" do
#   new_playlist = Playlist.create(params[:playlist])
#   redirect("/playlists/#{new_artist.id}")
# end
# #----


# add song

# remove song

# delete
