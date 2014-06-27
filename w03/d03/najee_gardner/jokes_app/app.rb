require 'sinatra'
require 'sinatra/reloader'

get '/' do
  "Hello!"
end

get '/jokes' do
  'I would tell you a UDP joke, but you might not get it...'
end

get '/:name' do
  "Hello, #{params[:name].capitalize}!"
end

get '/jokes/:name' do
  "I would tell you a UDP joke, #{params[:name].capitalize}, but you might not get it..."
end

get '/jokes/:name1/:name2' do
  "Is your name, #{params[:name1].capitalize}? That's almost as bad as the name #{params[:name2].capitalize}..."
end
