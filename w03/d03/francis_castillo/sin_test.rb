# myapp.rb
require 'sinatra'
require 'sinatra/reloader'

get '/' do
  '<h1>Hello world!</h1'
end

get '/about' do
  '<h1 style = "color: blue">My first web app!!!</h1>'
end

get '/welcome/:name' do
  "<h1 style = 'color: red'>Welcome! #{params[:name]}</h1>"
  #params.to_s
end
