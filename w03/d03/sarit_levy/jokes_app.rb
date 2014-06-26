#  Set up a Sinatra application called `jokes_app`
# * Set up a route `GET '/'` that returns a hello message
# * Create a custom route `GET '/jokes'` that returns a joke
# * Create a custom route `GET '/:name'` that returns a personalized hello message
# * Create a custom route `GET '/jokes/:name'` that returns a personalized joke

require 'sinatra'
require 'sinatra/reloader'

get '/' do
  "Hello"
end

get '/jokes' do
  "What do you call a fish with no eye?"
  "Fssshh"
end

get '/:name' do
  "Hello, #{params[:name]}, How Are You?"
end

get '/jokes/:name' do
  "Hey, #{params[:name]}, what do you call a fish with no eye?"
  "Fssshh"
end
