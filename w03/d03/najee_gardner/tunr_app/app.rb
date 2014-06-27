require 'sinatra'
require 'sinatra/reloader'

featured_songs = [
  "Toxic",
  "Friday",
  "Genie",
  "Resistance"
]

featured_artists = [
  "Britney Spears",
  "Rebecca Black",
  "Christina Aguliera",
  "Muse"
]

early_access_list = [
  {
    name: "Stan the Man",
    email: "stan@theman.com"
  }
]

get '/' do
  @list = early_access_list
  erb :home
end

get '/about' do
  @subject = "Origins"
  erb :about
end

get '/songs' do
  @subject = "Songs"
  @featured_songs = featured_songs
  erb :songs
end

get '/artists' do
  @subject = "Artists"
  @featured_artists = featured_artists
  erb :artists
end

post '/add_to_list' do
  early_access_list << {name: params[:full_name], email: params[:email]}
  redirect('/')
end

post '/new_artists' do
  featured_artists << params[:artist_name]
  redirect('/artists')
end

post '/new_songs' do
  featured_songs << params[:song_name]
  redirect('/songs')
end
