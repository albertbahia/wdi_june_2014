require 'sinatra'
require 'sinatra/reloader'

get '/' do
  message = ''
  100.times do
   message << "Hello World!\n"
  end
  message
end

get '/about' do
  "New about page."
end

get '/welcome/:name' do

  "Welcome, #{params[:name]}!"
end
