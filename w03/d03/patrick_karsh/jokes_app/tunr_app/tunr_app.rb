# @all * Create a Sinatra application called `tunr_app`
# * Set up the following routes
#   * GET '/' - Welcome to Tun.r
#   * GET '/about' - Information about HAMCo and Tun.r
#   * GET '/songs' - List some songs and say that they will be available soon
#   * GET '/artists' - List some artists and say that their music will be available soon
require 'sinatra'
require 'sinatra/reloader'

featured_songs = [
	"Toxic", 
	"Party all the time", 
	"Genie", 
	"Ruby"
]
featured_artists = [
	"Britney Spears", 
	"Def Leopard", 
	"Creed", 
	"Nickelback"
]
early_access_list = [
	'Sten Stien', "sten@gmail.com"
]
requested_artists = [
	'Britney'
]
requested_songs = [
	'D-unit'
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
	@requested_songs = requested_songs
	 erb(:songs)
end 

get '/artists' do 
	@featured_artists = featured_artists
	@requested_artists = requested_artists
	erb(:artists)
end 

post '/add_to_list' do 
	full_name = params[:full_name]
	email = params[:email]
	new_info_hash = {
	name: full_name
	email: email
	}
end 

post '/add_to_songs' do 
	requested_songs << params[:songs]
end 
