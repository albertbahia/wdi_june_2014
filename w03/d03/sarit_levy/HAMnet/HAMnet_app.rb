require 'sinatra'
require 'sinatra/reloader'


get '/' do
  erb(:welcome)
end

get '/welcome' do
  erb(:welcome)
end
