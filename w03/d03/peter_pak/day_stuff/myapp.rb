require 'sinatra'
require 'sinatra/reloader'

get '/' do
  'Hello World!<br><br>
  <img src="http://www.11points.com/images/animatedgifs/underconstruction.gif">'
end


get '/welcome/:name' do
  "Welcome #{params[:name].capitalize}!"
end
