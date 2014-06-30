require 'sinatra'
require 'sinatra/reloader'

get '/' do
  'Howdy'
end

get '/about' do
  'This is my first Sinatra app. Sweet!'
end

get '/welcome/:name' do
  "Welcome, #{params[:name]}!"
end
