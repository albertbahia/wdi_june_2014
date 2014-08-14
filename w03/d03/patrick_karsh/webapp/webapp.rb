require 'sinatra'
require 'sinatra/reloader'

get '/' do
  
  'Hello!'
end

get '/about' do 
	'I rule'
end  
get '/welcome/:name' do 
	"Welcome, #{params[:name]}!"

end  
get '/jokes' do

end 

# application called `jokes_app`
# * Set up a route `GET '/'` that returns a hello message
# * Create a custom route `GET '/jokes'` that returns a joke
# * Create a custom route `GET '/:name'` that returns a personalized hello message
# * Create a custom route `GET '/jokes/:name'` that returns a personalized joke
