require 'sinatra'
require 'sinatra/reloader'


get '/' do
  erb(:home)
end


get '/about' do
  erb(:about)
end

get '/songs' do
  erb(:songs)
end


get '/artists' do
  erb(:artists)
end
