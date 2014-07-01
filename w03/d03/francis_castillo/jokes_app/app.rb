require 'sinatra'
require 'sinatra/reloader'

get '/' do

  "<h1 style = 'color: red'>Why did the chicken cross the road?</h1> </br>click the link for answer go to <a href = 'http://localhost:4567/punchline'>punchline</a>"
end

get '/punchline' do
  "<em style = 'font-size: 25  px'>to get to the other side!!</em>"
end

# get '/' do
#   "<h1 style = 'color: red'>Welcome! #{params[:name]}</h1>"
#   #params.to_s
# end
