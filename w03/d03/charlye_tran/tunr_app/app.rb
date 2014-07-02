require 'sinatra'
require 'sinatra/reloader'

featured_songs = [
  "Toxic",
  "Friday",
  "Genie",
  "Enter the Sandman"
]

featured_artists = [
  "Britney Spears",
  "Rebecca Black",
  "Christina A",
  "Metallica"
]

artist_requests = [
  "Eminem"
]
song_requests = [
  "Baby Got Back"
]

early_access_list = [{
  name: "Stan the Man",
  email: "stan@theman.com"
}]



get '/' do
  @list = early_access_list
  erb(:home)
end

get '/about' do
  erb(:about)
end

get '/songs' do
  @featured_songs = featured_songs
  @s_requests = song_requests
  erb(:songs)
end

get '/artists' do
  @featured_artists = featured_artists
  @a_requests = artist_requests
  erb(:artists)
end

post '/add_to_list' do
  name = params[:full_name]
  email = params[:email]
  temp = {
    name: name,
    email: email
  }
  early_access_list << temp
  redirect('/')
end
