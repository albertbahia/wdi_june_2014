#Sinatra example web page exercise

require 'sinatra'
require 'sinatra/reloader'

# get ('/about') do
#   'This is my first Sinatra app. Suite!'
# end

get '/welcome/:name' do
  "Welcome, #{params[:name]}"  #this hash will return the name that is written in the path address in the place of ':name'.  If I put in my name 'Sarit', the page will return "Welcome, Sarit"
end
