require 'sinatra'
require 'sinatra/reloader'

get '/' do
  'Hello!'
end

get '/jokes' do
  'SUP FUNNY MAN.'
end

get '/:name' do
  "HEY WHAT'S THE HAPS #{params[:name].capitalize}"
end

get '/jokes/:name' do
  "Ohhhhhhh #{params[:name].capitalize}'s got jokes!"
end
