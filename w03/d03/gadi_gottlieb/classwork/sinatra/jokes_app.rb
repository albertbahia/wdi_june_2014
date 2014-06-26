require 'sinatra'
require 'sinatra/reloader'

get '/' do
  "Helllllllllllloooooooo!!!"
end

get '/jokes' do
  "Why did the chicken cross the road?
  <strong><em>To get to the other side!</em></strong>"
end

get '/:name' do
  "Helllllllllllloooooooo, #{params[:name].capitalize}!!!"
end

get '/jokes/:name' do
  "Hey #{params[:name].capitalize}, want to hear something funny?
  you stink!"
end
