require 'sinatra'
require 'sinatra/reloader'

featured_songs = [
  "Enter Sandman",
  "Master of puppets",
  "One"
]

featured_artists = [
  "Metallica",
  "Metallica",
  "Metallica",
  "Swans"
]

early_access_list = [
  {name: "Stan", email: "stan@theman.com"}
]

songs_wishlist = [
  "Ravedeath"
]

artists_wishlist = [
  "Tim Hecker"
]

get '/' do
  @list = early_access_list
  erb(:home)
end

get "/about" do
  erb(:about)
end

get "/songs" do
  @featured_songs = featured_songs
  @list = songs_wishlist
  erb(:songs)
end

get "/artists" do
  @featured_artists = featured_artists
  @list = artists_wishlist
  erb(:artists)
end

post "/add_to_list" do
  early_access_list << {name: params[:full_name],
                        email: params[:email]}
  redirect("/")
end

post "/add_to_songs_wishlist" do
  songs_wishlist << params[:new_song]
  redirect("/songs")
end

post "/add_to_artists_wishlist" do
  artists_wishlist << params[:new_artist]
  redirect("/artists")
end
