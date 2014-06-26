require 'sinatra'
require 'sinatra/reloader'

# Static URL
get '/' do
  '<h1>Happy birthday, web app!</h1>'
end

get '/about' do
  'Look at you! You have 2 pages!'
end

# Dyanmic URL
get '/welcome/:name' do
  "Welcome, #{params[:name].capitalize}!"
end
