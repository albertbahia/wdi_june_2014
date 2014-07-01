require 'sinatra'
require 'sinatra/reloader'

get '/' do
  erb(:home)
end

get '/about' do
  'This is my first sinatra app.  SWEET.'
end

get '/welcome/:name' do
  "Welcome, #{params[:name]}!"
end
