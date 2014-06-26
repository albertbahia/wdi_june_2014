require 'sinatra'
require 'sinatra/reloader'

get '/' do
    'Hello!'
end

get '/jokes' do
    'Why did the chicken cross the road??'
end

get '/:name' do
    "Hello, #{params[:name]}"
end

get '/jokes/:name' do
    "Because #{params[:name]} was there!"
end



=begin
Set up a Sinatra application called `jokes_app`
* Set up a route `GET '/'` that returns a hello message
* Create a custom route `GET '/jokes'` that returns a joke
* Create a custom route `GET '/:name'` that returns a personalized hello message
* Create a custom route `GET '/jokes/:name'` that returns a personalized joke
=end
