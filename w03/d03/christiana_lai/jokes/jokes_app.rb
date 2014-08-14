require 'sinatra'
require 'sinatra/reloader'

get '/' do
  'hello'
end

get '/jokes' do
  '[funny joke. ha!]'
end

get '/:name' do
  "Hello, #{params[:name].capitlize}!"
end

get '/jokes/:name' do
  "Knock, knock #{params[:name].capitalize}."
end
