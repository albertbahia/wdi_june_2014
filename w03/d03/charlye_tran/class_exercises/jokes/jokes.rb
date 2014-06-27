require 'sinatra'
require 'sinatra/reloader'

get '/' do
  'Hello!'
end

get '/jokes' do
  'Two donkeys walk into a bar. Celine Dion asks, why the long face?'
end

get '/:name' do
  "<h1>#{params[:name]} ketchup!</h1>"
end

get '/jokes/:name' do
  "<h1>#{params[:name]} walks into a bar with a donkey.</h1>"
end
