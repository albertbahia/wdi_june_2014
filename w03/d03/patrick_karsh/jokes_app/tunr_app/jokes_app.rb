# application called `jokes_app`
# * Set up a route `GET '/'` that returns a hello message
# * Create a custom route `GET '/jokes'` that returns a joke
# * Create a custom route `GET '/:name'` that returns a personalized hello message
# * Create a custom route `GET '/jokes/:name'` that returns a personalized joke
require 'sinatra'
require 'sinatra/reloader'

get '/' do 
	'Welcome'
end

get '/jokes' do 
	'A baby seal walks into a club'
end 

get '/:name' do 
	"Hello, #{params[:name].capitalize} welcome to my nightmare"
end 

get '/jokes/:name' do 
	"#{params[:name].capitalize} yo Mama is so fat she sits around the house" 
end
