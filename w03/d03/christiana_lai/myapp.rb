require 'sinatra'
require 'sinatra/reloader'

get '/' do
  'Hello world!'
end

get '/about' do
  'Sup, dawg'
end

get '/welcome/:name' do
  "Welcome, #{params[:name]}"
end
