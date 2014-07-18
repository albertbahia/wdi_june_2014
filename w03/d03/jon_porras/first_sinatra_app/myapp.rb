require 'sinatra'
require 'sinatra/reloader'

get '/' do
  'Whats good?'
end

get '/about' do
  'This is my first sinatra app! suite! ok?'
end

#URL parameters
get '/welcome/:name' do
  "welcome #{params[:name]}"
end
