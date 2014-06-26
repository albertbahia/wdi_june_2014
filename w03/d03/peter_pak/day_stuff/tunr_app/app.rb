# * Create a Sinatra application called `tunr_app`
# * Set up the following routes
#   * GET '/' - Welcome to Tun.r
#   * GET '/about' - Information about HAMCo and Tun.r
#   * GET '/songs' - List some songs and say that they will be available soon
#   * GET '/artists' - List some artists and say that their music will be available soon


require 'sinatra'
require 'sinatra/reloader'

featured_songs = [
  "Friday", "Genie", "Sandman", "Hey Ya"
]

featured_artists = [ "RB", "CA", "M", "Outkast",]

early_access_list = [
  {full_name: "Stan the Man",
    email: "stan@theman.com"}
]
songs_wanted = ["Tribute"]
artists_wanted = ["Tenacious D"]

get '/' do
  @list = early_access_list
  erb(:home)
end

get '/about' do
  erb(:about)
end

get '/songs' do
  @featured_songs = featured_songs
  @songs_wanted = songs_wanted
  erb(:songs)
end

get '/artists' do
  @featured_artists = featured_artists
  @artists_wanted = artists_wanted
  erb(:artists)
end

post '/add_to_list' do
  early_access_list << {
    full_name: params[:full_name],
    email: params[:email]}
  redirect('/')
end

post '/songs_wanted' do
  songs_wanted << params[:song_title]
  redirect('/songs')
end

post '/artists-wanted' do
  artists_wanted << params[:artist_name]
  redirect('/artists')
end
