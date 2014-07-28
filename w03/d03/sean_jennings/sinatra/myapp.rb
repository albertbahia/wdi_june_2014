require 'sinatra'
require 'sinatra/reloader'

get '/' do

  '<h1>Hello World</h1>'

end


get '/about' do

  '<p>this is my first sinatra app</p>'

end
