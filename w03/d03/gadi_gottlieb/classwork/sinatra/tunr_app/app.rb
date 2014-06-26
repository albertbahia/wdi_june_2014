require 'sinatra'
require 'sinatra/reloader'

featured_songs = [
  "Toxic",
  "Friday",
  "Sweet-Caroline",
  "Sandman",
  "Communication Breakdown"
]

featured_artists = [
  "Metallica",
  "Neil Diamond",
  "Kiss",
  "ACDC"
]

early_access_list = [{
  name: "Stan",
  email: "stan@theman.com"
  }]

desired_songs = [
  "Eye of the Tiger"
]
desired_artists = [
  "Led Zeppelin"
]


get '/' do
  @list = early_access_list
  erb(:home)
end

get '/about' do
  erb(:about)
end

get '/songs' do
  @featured_songs = featured_songs
  @wishlist = desired_songs
  erb(:songs)
end

get '/artists' do
  @featured_artists = featured_artists
  @artist_wishlist = desired_artists
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

post '/add_songs' do
  desired_songs << params[:song]
  redirect('/songs')
end

post '/add_artists' do
  desired_artists << params[:artist]
  redirect('/artists')
end
