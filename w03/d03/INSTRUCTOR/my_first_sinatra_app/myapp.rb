# myapp.rb
require 'sinatra'
require 'sinatra/reloader'

get '/' do
  'Howdy!'
end

get '/jokes' do
  'A horse walked into a bar. Everyone left because they sensed a dangerous situation.'
end

get '/:name' do
  "Hi there, #{params[:name].capitalize}!"
end

get '/jokes/:name' do
  "#{params[:name].capitalize} walked into a bar. Everyone left because they sensed a dangerous situation."
end
