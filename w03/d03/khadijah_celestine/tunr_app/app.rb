require 'sinatra'
require 'sinatra/reloader'

featured_songs = ["Khad", "ijah", "Cele", "stine"]
artists = ["one", "two", "three", "four", "five"]
early_access_list = [{name: "Stan", email: "yessir"}]

get '/' do
	@early_access_list = early_access_list
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
	@artists = artists
	erb(:artists)
end

post '/add_to_list' do
	early_access_list.push({:name => params[:full_name], :email => params[:email]})
	redirect('/')
	#params.to_s
end

post '/add_song' do
	featured_songs.push(params[:song])
	redirect('/songs')
end

post '/add_artist' do
	artists.push(params[:artist])
	redirect('/artists')
end
