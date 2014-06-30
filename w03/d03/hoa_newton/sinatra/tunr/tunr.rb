# * Create a Sinatra application called `tunr_app`
# * Set up the following routes
#   * GET '/' - Welcome to Tun.r
#   * GET '/about' - Information about HAMCo and Tun.r
#   * GET '/songs' - List some songs and say that they will be available soon
#   * GET '/artists' - List some artists and say that their music will be available soon

require 'sinatra'
require 'sinatra/reloader'

featured_songs = [
	"Toxic",
	"Ruby",
	"Fighter"
]

featured_artists = [
	"Christina Aguilera",
	"Britney Spear",
	"Adele"
	]

early_access_list = [
	{name: "Stand",
	email: "stand@theman.com"
	}
]

songs_wish_list = [
	"1234"
	]

artists_wish_list = [
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
@songs_wish_list = songs_wish_list 
	erb(:songs)
end

get '/artists' do 
@featured_artists = featured_artists
@wished_artists = artists_wish_list
	erb(:artists)
end

post '/add_to_list' do
	new_user = {
	name: params[:full_name],
	email: params[:email]
	}
	early_access_list.push(new_user)
	redirect('/') #go back to the home page after the post
end

post '/songs_wish_list' do 
	songs_wish_list.push(params[:song_name])
	redirect('/songs')
end

post '/artists_wish_list' do 
	artists_wish_list.push(params[:artist_name])
	redirect('/artists')
end







