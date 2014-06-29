require 'sinatra'
require 'sinatra/reloader'

featured_songs = [
  "Toxic",
  "Friday",
  "Genie"
]

featured_artists = [
  "Michael Jackson",
  "Alicia Keys",
  "John Mayer"
]

early_access_list = [
  {
    name: "Stan",
    email: "stan@theman.com"
  }
]

song_request_list = [
  "Firework"
]

artist_request_list = [
  "Sting"
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
  @song_request_list = song_request_list
  erb(:songs)
end

get '/artists' do
  @featured_artists = featured_artists
  @artist_request_list = artist_request_list
  erb(:artists)
end

post '/add_to_list' do
  early_access_list << {name: params[:full_name], email: params[:email]}
  redirect('/')
end

post '/add_to_song_list' do
  song_request_list << params[:song_name]
  redirect('/songs')
end

post '/add_to_artist_list' do
  artist_request_list << params[:artist_name]
  redirect('/artists')
end
