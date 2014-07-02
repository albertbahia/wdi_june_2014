require 'sinatra'
require 'sinatra/reloader'

featured_songs = [
  "Toxic",
  "Friday",
  "Genie",
  "Enter Sandman"
]

featured_artists = [
  "Britney",
  "Blackmon",
  "Aguilera",
  "Metallica"
]

early_access_list = [
  {
    full_name: "Stan",
    email: "stan@theman.com"
  }
]

song_request_list = [
  "ABC"
]

artist_request_list = [
  "Jackson 5"
]

get '/' do
  @list = early_access_list
  erb(:home)
end

get '/about' do
  erb(:about)
end

get '/songs' do
  @list = song_request_list
  @featured_songs = featured_songs
  erb(:songs)
end

get '/artists' do
  @list = artist_request_list
  @featured_artists = featured_artists
  erb(:artists)
end

post '/add_to_list' do
  early_access_list << { full_name: params[:full_name], email: params[:email] }
  redirect('/')
end

post '/add_song' do
  song_request_list << params[:song_name]
  redirect('/songs')
end

post '/add_artist' do
  artist_request_list << params[:artist_name]
  redirect('/artists')
end




# * Create a Sinatra application called `tunr_app`
# * Set up the following routes
#   * GET '/' - Welcome to Tun.r
#   * GET '/about' - Information about HAMCo and Tun.r
#   * GET '/songs' - List some songs and say that they will be available soon
#   * GET '/artists' - List some artists and say that their music will be available soon
