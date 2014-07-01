require 'sinatra'
require 'sinatra/reloader'

get '/' do
  'Welcome to the Joke app!'
end

get '/jokes' do
  'What do you call a fake noodle? An Impasta!'
end

get '/welcome/:name' do
  "What's up, #{params[:name]}!"
end

get '/jokes/:name' do
  "What happens if #{params[:name]} eats shoe polish?<br>Every morning #{params[:name]}'l rise and shine!"
end

get '/jokes/:name/:name2' do
  "What happens if #{params[:name]} eats shoe polish?<br>Every morning #{params[:name2]}'l rise and shine!"
end

#  Set up a Sinatra application called `jokes_app`
# * Set up a route `GET '/'` that returns a hello message
# * Create a custom route `GET '/jokes'` that returns a joke
# * Create a custom route `GET '/:name'` that returns a personalized hello message
# * Create a custom route `GET '/jokes/:name'` that returns a personalized joke
