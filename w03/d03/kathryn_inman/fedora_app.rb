require 'sinatra'
require 'sinatra/reloader'

get '/:name' do
  "<h1>Hello there, friend #{params[:name]}."
end


#
# * Set up a route `GET '/'` that returns a hello message
# * Create a custom route `GET '/jokes'` that returns a joke
# * Create a custom route `GET '/:name'` that returns a personalized hello message
# * Create a custom route `GET '/jokes/:name'` that returns a personalized joke
