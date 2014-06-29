require 'sinatra'
require 'sinatra/reloader'

get '/' do
  "Hello."
end

get '/jokes' do
  "Who loves bananas?"
end

get '/:name' do
  "Hello, #{params[:name]}."
end

get '/jokes/:name' do
  "You do, #{params[:name].capitalize}! Ha ha."
end
