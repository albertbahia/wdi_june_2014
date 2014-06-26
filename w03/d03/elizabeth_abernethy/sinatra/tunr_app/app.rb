=begin
* Create a Sinatra application called `tunr_app`
* Set up the following routes
  * GET '/' - Welcome to Tun.r
  * GET '/about' - Information about HAMCo and Tun.r
  * GET '/songs' - List some songs and say that they will be available soon
  * GET '/artists' - List some artists and say that their music will be available soon
=end

require 'sinatra'
require 'sinatra/reloader'

featured_songs = [
  "Fancy",
  "Problem",
  "Rude",
  "All of Me",
  "Wiggle"
]

featured_artists = [
  "Iggy Azalea",
  "Ariana Grande",
  "MAGIC!",
  "John Legend",
  "Jason Derulo"
]

early_access = [
  { name: "Stan",
  email: "stan@theman.com"
  }
]

user_music = [
  "Tribute"
]

user_songs = [
  "Tenacious D"
]

# - methods that like to show things

get '/' do
  @list = early_access
  erb(:home)
end

get '/about' do
  erb(:about)
end

get '/songs' do
  @songs = user_songs
  @featured_songs = featured_songs
  erb(:songs)
end

get '/music' do
  @music = user_music
  @featured_artists = featured_artists
  erb(:music)
end

# - "shy route", only likes to add things to its list, doesn't like to display

post '/add_to_list' do
  user_name = params[:full_name]
  user_email = params[:email]
  new_info_hash = {
    name: user_name,
    email: user_email
  }
  early_access << new_info_hash
  redirect('/')
end

post '/add_to_songs' do
  user_songs << params[:song_name]
  redirect('/songs')
end

post '/add_to_music' do
  user_music << params[:artist_name]
  redirect('/music')
end
