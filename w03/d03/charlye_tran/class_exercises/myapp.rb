require 'sinatra'
require 'sinatra/reloader'

get '/' do
  'Howdy!'
end

get '/about' do
  'THIS is my first Sinatra app. SUITE!'
end

get '/welcome/:name' do
  "Welcome, #{params[:name]}!!!"
end
