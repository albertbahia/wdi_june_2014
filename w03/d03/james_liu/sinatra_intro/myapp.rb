# myapp.rb
require 'sinatra'
require 'sinatra/reloader'

get '/' do
  "<h1>'Hello!'</h1>"
end

get '/about' do
  "This is going to be awesome"
  end
  
  get '/welcome' do
      'Welcome!'
  end
  
  get '/welcome/:name' do
      "Welcome, #{params[:name]}!"
  end
