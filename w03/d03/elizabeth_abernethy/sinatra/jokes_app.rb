=begin
* Set up a Sinatra application called `jokes_app`
* Set up a route `GET '/'` that returns a hello message
* Create a custom route `GET '/jokes'` that returns a joke
* Create a custom route `GET '/:name'` that returns a
personalized hello message
* Create a custom route `GET '/jokes/:name'` that returns
a personalized joke
=end

require 'sinatra'
require 'sinatra/reloader'

get '/' do
  '<h1>Hello there!</h1>'
end

get '/jokes' do
  '<h4>Why do they call it Hypertext? Too much JAVA!</h4>'
end

get '/:name' do
  "Hello, #{params[:name].capitalize}!"
end

get '/jokes/:name' do
  "Hey, #{params[:name].capitalize}... do you know why they call it Hypertext?.... Too much JAVA!"
end
