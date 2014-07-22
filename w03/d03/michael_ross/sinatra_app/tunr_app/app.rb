require 'sinatra'
require 'sinatra/reloader'

featured_songs = [
  "Toxic",
  "Friday",
  "Jesus Christ was an Only Child",
  "Enter Sandman",
  "Loser"
]

featured_artists = [
  "Britney Spears",
  "Rebecca Black",
  "Modest Mouse",
  "Metallica",
  "Beck"
]

early_access_list = [
  {
  name: "Stanley Kubrick",
  email: "Stanley@aol.com"
  }
]

song_wish_list = [

]

artist_wish_list = [

]

get '/' do
  @list = early_access_list
  erb(:home)
end

get '/about' do
  erb(:about)
end

get '/songs' do
  @song_wish_list = song_wish_list
  @featured_songs = featured_songs
  erb(:songs)
end

get '/artists' do
  @artist_wish_list = artist_wish_list
  @featured_artists = featured_artists
  erb(:artists)
end

post '/add_to_list' do
  name = params[:full_name]
  email = params[:your_email]
  # Construct a hash
  new_info_hash = {
    name: name,
    email: email
  }
  # Push that hash into my early_access_list array
  early_access_list << new_info_hash
  redirect('/')
end

post '/add_new_song' do
  song_wish_list << params[:new_song]
  redirect('/songs')
end

post '/add_new_artist' do
  artist_wish_list << params[:new_artist]
  redirect('/artists')
end
