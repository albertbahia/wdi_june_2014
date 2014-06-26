# * Set up a route `GET '/'` that returns a hello message
# * Create a custom route `GET '/jokes'` that returns a joke
# * Create a custom route `GET '/:name'` that returns a personalized hello message
# * Create a custom route `GET '/jokes/:name'` that returns a personalized joke


require 'sinatra'
require 'sinatra/reloader'

get '/' do
  '<IMG SRC="http://www.mikesfreegifs.com/main4/underconstruction/webconstruction.gif"><br><h1>Hey.<IMG SRC="http://www.mikesfreegifs.com/main4/underconstruction/atwork89.gif"></h1><br>'
end

get '/jokes' do
  "What did the zero say to the eight? I like your belt!"
end

get '/:name' do
  "Hey #{params[:name].capitalize}"
end

get '/jokes/:name' do
  "You stupid #{params[:name].capitalize}."
end


get '/jokes/:name1/:name2' do
  "#{params[:name1].capitalize}: Knock Knock <br>
  #{params[:name2].capitalize}: Who's there? <br>
  #{params[:name1].capitalize}: Noah <br>
  #{params[:name2].capitalize}: Noah who?<br>
  #{params[:name1].capitalize}: Noah good place we can get something to eat?"
end
