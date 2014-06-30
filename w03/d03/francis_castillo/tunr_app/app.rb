require 'sinatra'
require 'sinatra/reloader'

featured_songs  = ["toxic", 'genie', "sandman"]
featured_artists = ["Jay Z", "Christina Aguilera", "Metallica"]
early_access_list = [{name: "Stan the Man", email: "stan@themanmail.com"}]

get '/' do
  @list = early_access_list
  erb(:home)
end

get '/about' do
  erb(:about)
end

get '/songs' do
  @featured_songs = featured_songs
  erb(:songs)
end

get '/artists' do
  @featured_artists = featured_artists
  erb(:artists)
end

post '/add_to_list' do
  name  = params[:full_name]
  email = params[:email]
  early_access_list << { name: name, email:  email}
  redirect('/')
end

post '/add_songs' do
  featured_songs << params[:song_name]
  redirect('/songs')
end

post '/add_artists' do
  featured_artists << params[:artist_name]
  redirect('/artists')
end
