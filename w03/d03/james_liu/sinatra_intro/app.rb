require 'sinatra'
require 'sinatra/reloader'

featured_songs = [ 
    "Toxic",
    "Blah",
    "Blee"
    ]
    
 featured_stuff = [
    "sock",
    "pants",
    "jujus"
    ]
    
early_access_list = []
    
get '/' do
    @list = early_access_list
    erb(:home)
end

get '/stuff' do
    @featured_stuff = featured_stuff
    erb(:stuff)
end

get '/songs' do
    @featured_songs = featured_songs
    erb(:songs)
end

get '/final' do
    erb(:final)
end

post '/add_to_list' do
    name = params[:full_name]
    email = params[:email]
    new_user = {name => email}
    early_access_list <<  new_user
    redirect('/')
end

post '/featured_stuff' do
    featured_stuff << params[:new_stuff]
    redirect('/stuff')
end

post '/featured_songs' do
    featured_songs << params[:new_song]
    redirect('/songs')
end    


