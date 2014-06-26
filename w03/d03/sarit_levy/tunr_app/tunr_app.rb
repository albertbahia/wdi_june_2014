
require 'sinatra'
require 'sinatra/reloader'

featured_songs = [
  "Toxic",
  "Friday",
  "Genie",
  "Sandman"
]

featured_artists = [
  "Cool Man Joe",
  "Hank Robertson",
  "Together We Can",
  "Eight Is Not Enough"
]

early_access_list = [
  {
  name: "Stan",
  email: "stan@theman.com"
  }
]

songs_wishlist = [
  "Tribute"
]
artists_wishlist = [
  "Tenacious D"
]

get '/' do
  @list=early_access_list
  erb(:home)
end

get '/about' do
  erb(:about)
end

get '/songs' do
  @featured_songs = featured_songs
  @wishlist = songs_wishlist
  erb(:songs)
end

get '/artists' do
  @featured_artists = featured_artists
  erb(:artists)
end

post '/add_to_list' do
  user_name = params[:full_name]
  user_email = params[:email]
  new_info_hash = {
    name: user_name,
    email: user_email
  }
  early_access_list << new_info_hash
  redirect('/')
end

post '/add_to_songs' do
  songs_wishlist << params[:song]
  redirect('songs')
end
