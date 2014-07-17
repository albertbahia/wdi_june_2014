require 'sinatra'
require 'sinatra/reloader'

get '/' do
  "Wussup."
end

get '/jokes' do
  "You know you're ugly when it comes time for a group picture and they hand you the camera."
end

get '/:name' do
  "Oh hi #{params[:name]}"
end

get '/jokes/:name' do
  "Hey #{params[:name]}, what do you call a bear with no teeth? ............Gummy bear. "
end

get '/:name1/:name2' do
  "Hey #{params[:name1]} and #{params[:name2]}!"
end
