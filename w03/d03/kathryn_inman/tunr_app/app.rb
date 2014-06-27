require 'sinatra'
require 'sinatra/reloader'

featured_songs = [
  "Steel Monkey",
  "Erroneous Escape Into Eric Eckles",
  "Walk Like A Giant",
  "Sixteen Saltines",
  "Oh Heartland, Up Yours!"
]

featured_artists = [
  "Floex",
  "Jethro Tull",
  "Tim Hecker",
  "Final Fantasy",
  "of Montreal"
]

beta_chaser_nerds = [{
  name: "Flat Stanley",
  email: "flat_stan@gmail.com"
}]

demanded_songs = [
  "Tears In The Typing Pool",
]


demanded_artists = [
  "Bad Brains",
]

get '/' do
  @beta_chaser_nerds = beta_chaser_nerds
  erb(:home)
end

get '/about' do
  erb(:about)
end

get '/songs' do
  @featured_songs = featured_songs
  @demanded_songs = demanded_songs
  erb(:songs)
end

get '/artists' do
  @featured_artists = featured_artists
  @demanded_artists = demanded_artists
  erb(:artists)
end

post '/early_access' do
  new_nerd = {:name => params[:full_name], :email => params[:full_email] }
  beta_chaser_nerds << new_nerd
  redirect('/')
end



post '/song_requests' do
  demanded_songs << params[:song].capitalize
  redirect('/songs')
end

post '/artist_requests' do
  demanded_artists << params[:artist].capitalize
  redirect('/artists')
end
