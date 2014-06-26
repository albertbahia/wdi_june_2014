require 'sinatra'
require 'sinatra/reloader'

get '/' do
  'Howdy Doody!'
end

get '/about' do
  'This is my <strong>first</strong> Sinatra app. Sweeeet!'
end

get '/welcome/:name' do # URL parameters. Anything that comes in will be altered to the data coming in.
  "Welcome, #{params[:name]}"
end
