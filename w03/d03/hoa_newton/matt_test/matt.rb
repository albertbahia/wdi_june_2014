require 'sinatra'
require 'sinatra/reloader'

get '/welcome' do 
  erb(:welcome)
end
