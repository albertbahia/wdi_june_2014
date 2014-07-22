require 'sinatra'
require 'sinatra/reloader'

get '/' do
  '<h1 style="font-size: 150px; color: cyan;">YOOOOOOO</h1>'
end

get '/about' do
  'This is my first Sinatra app'
end


get '/welcome/:name' do
  "Welcome, #{params[:name]}"
end
